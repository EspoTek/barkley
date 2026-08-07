if (!started) exit;
timer     += 1;
roomtimer += 1;

// Heartbeat: without it a wedged game and a quiet one look identical to the
// driver, and it kills the run either way. If these stop, the game is stuck.
if ((timer mod 60) = 0) {
	show_debug_message("AUTOQA ALIVE f=" + string(timer) + " room=" + string(ri)
		+ " phase=" + string(phase) + " rt=" + string(roomtimer));
}

// Keep the party standing so a battle actually plays out instead of ending in a
// wipe two turns in. Enemies are left alone -- the point is to reach the win,
// lose and level-up paths, not to make combat unlosable in a way that skips them.
// Decide once per battle whether to prop the party up. Healing them every step
// made them unkillable, so oBCamera's gover path -- "You have been slain in
// battle", RomGameover, global.die, diemessage and the whole continue/reload
// flow -- could never run. Sustain most fights so they last long enough to
// exercise turn order, skills and items; let the rest be lost on purpose.
if (instance_exists(oBCamera)) {
	if (mode = "attacks") {
		// Attacks mode wants one long battle per character, so sustain BOTH
		// sides: the party so a counterattack cannot end the run, the enemies
		// so a strong skill cannot end the fight two attacks into the list.
		// Instant-kill effects set `kill` rather than draining _vp; those still
		// end the battle, and phase 7 re-enters and carries on down the list.
		if (instance_exists(oBattler)) {
			with (oBattler) { _vp = _rvp; if (enemy = 0) _bp = _rbp; }
		}
	} else {
		if (inbattle = 0) {
			inbattle  = 1;
			bsustain  = ((qa_next() mod 5) != 0);   // 4 in 5 survivable, 1 in 5 a wipe
			show_debug_message("AUTOQA BATTLE start sustain=" + string(bsustain));
		}
		if (bsustain && instance_exists(oBattler)) {
			with (oBattler) { if (enemy = 0) _vp = _rvp; }
		}
	}
} else {
	inbattle = 0;
}

// Quick-time events. oQuicker gives ~20 frames to press one specific key; a wrong
// key or a timeout fails and docks global.die. Random mashing lands the right key
// only by luck (one in seven per switch), so drive it deliberately -- but pass
// only most of the time, because the fail branch matters just as much: cine_0270
// through cine_0273 fork on global.passed, and the die decrement leads to the
// game-over path. Left to chance, whichever branch the RNG missed goes untested.
if (instance_exists(oQuicker)) {
	if (oQuicker.time > 0) {
		if (qteheld < 0) {
			qa_release();
			var _qmap = [global.key_right, global.key_up, global.key_left,
			             global.key_down, global.key_action, global.key_cancel];
			var _pass = ((qa_next() mod 10) < 7);
			var _pick = _pass ? _qmap[oQuicker.key] : _qmap[qa_next() mod 6];
			keyboard_key_press(_pick);
			qteheld  = _pick;
			qtetimer = timer;
			show_debug_message("AUTOQA QTE want=" + string(oQuicker.key)
				+ " pressed=" + string(_pick) + " aiming=" + (_pass ? "pass" : "fail"));
		} else if (timer > qtetimer + 2) {
			keyboard_key_release(qteheld);
			qteheld = -1;
		}
		exit;
	}
}
if (qteheld >= 0) { keyboard_key_release(qteheld); qteheld = -1; }

if (mode = "attacks" && phase = 1) phase = 6;      // ri is a character, not a room

if (mode != "attacks" && ri >= nrooms) {
	show_debug_message("AUTOQA DONE caught=" + string(crashes));
	game_end();
	exit;
}

if (phase = 1) {                                   // warp into the target room
	show_debug_message("AUTOQA STEP room=" + string(ri) + " name=" + room_get_name(rooms[ri]) + " phase=enter");
	if (variable_global_exists("cinema")) global.cinema = 0;
	if (variable_global_exists("freeze")) global.freeze = 0;
	// Clear pending-transition state before warping. An exit sets global.posser to
	// itself and the game's very next room is the paired one holding the other half
	// of that door, where oController's Room Start reads global.posser.x to place
	// Barkley. The sweep warps somewhere else instead, so posser is left pointing at
	// an object with no instance here and Room Start raises -- and oController's
	// Step_1 bails out early on a set posser, which would freeze input as well.
	// global.roz is the same kind of leftover: it drives a fadeout on room start.
	if (variable_global_exists("posser")) global.posser = -1;
	if (variable_global_exists("roz"))    global.roz    = -1;
	// Same reasoning: global.roomer marks a transition the game still intends to
	// finish. Force-warping elsewhere leaves it pointing at a move that will never
	// happen, and oController's Step_2 acts on it every step.
	if (variable_global_exists("roomer")) global.roomer = -1;
	// Before the warp, so the incoming room's oBarkley Create sees the right
	// global.following and materialises the party via sFollow("update").
	qa_state();
	try {
		room_goto(rooms[ri]);
	} catch (_ex) {
		crashes += 1;
		show_debug_message("AUTOQA CAUGHT room=" + room_get_name(rooms[ri]) + " obj=<room_goto>"
			+ " :: " + string(_ex.message) + " :: at " + string(_ex.script) + " line " + string(_ex.line));
	}
	roomtimer = 0;
	qa_release();
	mstill = 0;
	phase = 2;
	exit;
}

if (phase = 2) {                                   // let the room settle and draw
	if (roomtimer < 40) exit;
	if (mode = "rooms")  { ri += 1; ii = 0; phase = 1; exit; }
	if (mode = "touch" || mode = "monkey") { tbuilt = 0; phase = 5; exit; }
	phase = 3;
	exit;
}

if (phase = 5) {                                   // walk up to every oItem and use it
	// Directed coverage, rather than hoping a random walk bumps into things.
	// Interaction really works like this: oTalker is a probe 16px in front of
	// Barkley (see oTalker's Step_2), pressing action broadcasts event_user(0) to
	// every oItem, and each one fires only if it overlaps that probe. So placing
	// Barkley such that the probe lands on a target and pressing the real key
	// drives the genuine path -- unlike phase 3, which calls event_user(1)
	// directly and so reaches handlers in states no player could produce.
	if (tbuilt = 0) {
		tlist = [];
		tskipped = 0;
		var _i;
		for (_i = 0; _i < instance_count; _i += 1) {
			var _id = instance_id_get(_i);
			if (!instance_exists(_id)) continue;
			var _oi = _id.object_index;
			if (_oi != oItem && !object_is_ancestor(_oi, oItem)) continue;
			// The only things worth skipping are Barkley and his followers -- they
			// descend from oPlayer, which descends from oItem, and teleporting
			// Barkley onto himself exercises nothing. Everything else stays in,
			// including oColliderGuy (starts a random encounter) and the oExit
			// family (room transitions): leaving the room is coverage, not a
			// failure, and the excursion handler below plays it out and comes back.
			if (_oi = oBarkley) { tskipped += 1; continue; }
			if (_oi = oFollower || object_is_ancestor(_oi, oFollower)) { tskipped += 1; continue; }
			array_push(tlist, _id);
		}
		tbuilt = 1; tstate = 0; ttimer = 0;
		// Coming back from an excursion rebuilds the list, because a room reload
		// invalidates every stored instance id. Keep the cursor so we carry on
		// past the target that took us away instead of looping on it forever.
		if (tresume = 1) tresume = 0; else { ti = 0; trep = 0; }
		if (texcri != ri) { texc = 0; texcri = ri; }   // fresh room, fresh excursion budget
		show_debug_message("AUTOQA TOUCH room=" + room_get_name(rooms[ri])
			+ " targets=" + string(array_length(tlist)) + " skipped=" + string(tskipped)
			+ " from=" + string(ti));
	}
	// Nothing left to touch here. Checked before the room test below, or a room
	// that ejects us on entry never reaches it and the cursor runs away forever.
	if (ti >= array_length(tlist) && room = rooms[ri]) {
		if (mode = "monkey") { phase = 4; exit; }
		ri += 1; ii = 0; phase = 1;
		exit;
	}
	// An interaction moved us: a battle, an exit, the save menu. That is coverage,
	// not a failure -- fuzz it so it actually progresses, then come back and carry
	// on with the rest of the room. Battles get a long leash because they take a
	// while to play out; anything else is a menu or an adjacent room, so a short
	// look is enough before returning.
	if (room != rooms[ri]) {
		var _limit = 300;
		if (room = RomInter || room = RomTrans) _limit = 2700;
		tout += 1;
		if (tout = 1) {
			show_debug_message("AUTOQA TOUCH excursion -> " + room_get_name(room));
			texstate = tstate;   // 0 = we were ejected on arrival, not by a touch
		}
		if (tout > _limit) {
			show_debug_message("AUTOQA TOUCH returning from " + room_get_name(room)
				+ " after " + string(tout) + "f");
			qa_release();
			tout = 0; trep = 0; tbuilt = 0; tresume = 1;
			// Only skip a target if a target is what moved us. Being ejected on
			// arrival is not the current target's fault, and advancing for it walked
			// the cursor past every target in the room without touching any of them.
			if (texstate != 0) ti += 1;
			texc += 1;
			// Some rooms bounce us straight back out -- RomSpaldingRoad3 ejects to
			// RomSpaldingRoad2 the moment it loads. Retrying forever burns the whole
			// run there: the cursor reached 6252 on a 20-target list and nothing was
			// ever interacted with. Give up after a few attempts and move on.
			if (texc > 3) {
				show_debug_message("AUTOQA TOUCH giving up on " + room_get_name(rooms[ri])
					+ " after " + string(texc) + " excursions -- it ejects us on entry");
				ri += 1; ii = 0; ti = 0; tresume = 0; texc = 0;
			}
			roomtimer = 0; phase = 1;
			exit;
		}
		// True-random input so battle menus, shops and the save screen advance.
		if (timer >= nextswitch) {
			if (held >= 0) { keyboard_key_release(held); held = -1; }
			held       = keys[qa_next() mod nkeys];
			nextswitch = timer + 2 + (qa_next() mod 11);
			keyboard_key_press(held);
		}
		exit;
	}
	if (tout > 0) {                                // came back on its own (battle over)
		show_debug_message("AUTOQA TOUCH back in " + room_get_name(room) + " after " + string(tout) + "f");
		qa_release();
		tout = 0; ti += 1; trep = 0; tstate = 0; ttimer = 0;
	}
	if (ti >= array_length(tlist) || !instance_exists(oBarkley)) {
		if (mode = "monkey") { phase = 4; exit; }
		ri += 1; ii = 0; phase = 1;
		exit;
	}
	var _t = tlist[ti];
	if (!instance_exists(_t)) { ti += 1; tstate = 0; ttimer = 0; exit; }
	ttimer += 1;
	if (ttimer > 240) {                            // watchdog: 8s per target
		show_debug_message("AUTOQA TOUCH watchdog obj=" + object_get_name(_t.object_index));
		qa_clearui();
		ti += 1; tstate = 0; ttimer = 0;
		exit;
	}

	if (tstate = 0) {                              // stand in front of it, facing down
		qa_clearui();                              // nothing left open to hide behind
		var _cx = (_t.bbox_left + _t.bbox_right)  / 2;
		var _cy = (_t.bbox_top  + _t.bbox_bottom) / 2;
		// Approach from a different side each rep. Every rep used to come from
		// directly above facing down, which made them exact repeats -- and anything
		// that can only be used from one particular side, or whose mask does not
		// reach above it, was simply never reachable. oTalker sits at
		// (master.x+12, master.y+24) plus 16 in the facing direction, so invert that
		// per facing to land the probe on the target's centre.
		var _t4 = trep mod 4;                      // 0 up, 1 right, 2 down, 3 left
		if (_t4 = 0)      { oBarkley.x = _cx - 12; oBarkley.y = _cy - 8;  }
		else if (_t4 = 1) { oBarkley.x = _cx - 28; oBarkley.y = _cy - 24; }
		else if (_t4 = 2) { oBarkley.x = _cx - 12; oBarkley.y = _cy - 40; }
		else              { oBarkley.x = _cx + 4;  oBarkley.y = _cy - 24; }
		oBarkley.t    = _t4;
		oBarkley.move = "";
		show_debug_message("AUTOQA STEP room=" + string(ri) + " name=" + room_get_name(rooms[ri])
			+ " inst=" + string(ti) + " obj=" + object_get_name(_t.object_index)
			+ " rep=" + string(trep) + " phase=touch");
		tstate = 1; ttimer = 0;
		exit;
	}
	if (tstate = 1) {                              // oTalker repositions in its own Step
		if (ttimer < 3) exit;
		keyboard_key_press(global.key_action);
		tstate = 2; ttimer = 0;
		exit;
	}
	if (tstate = 2) {
		if (ttimer < 2) exit;
		keyboard_key_release(global.key_action);
		tstate = 3; ttimer = 0;
		exit;
	}
	if (tstate = 3) {                              // let dialog/cutscene play, tapping through
		var _busy = 0;
		if (instance_exists(oDialog)) _busy = 1;
		if (variable_global_exists("cinema")) { if (global.cinema = 1) _busy = 1; }
		if (_busy = 0 && ttimer > 8) {
			if (variable_global_exists("movefreeze")) global.movefreeze = 0;
			keyboard_key_release(global.key_action);
			tstate = 4; ttimer = 0;
			exit;
		}
		if ((ttimer mod 10) = 0) keyboard_key_press(global.key_action);
		if ((ttimer mod 10) = 2) keyboard_key_release(global.key_action);
		// Menus and shops close on cancel, not action. Tapping action alone kept
		// Hundley's shop open indefinitely, and every later target in that room was
		// blocked behind it -- 18 watchdog timeouts in a row, interacting with nothing.
		if ((ttimer mod 10) = 5) keyboard_key_press(global.key_cancel);
		if ((ttimer mod 10) = 7) keyboard_key_release(global.key_cancel);
		exit;
	}
	if (tstate = 4) {                              // then fuzz whatever state that left us in
		// A true monkey here on purpose, not the biased walk: the point is not to
		// travel but to throw arbitrary input at the state the interaction just
		// produced -- an open dialog, a shop, a menu, a cutscene -- which is where
		// input handling is least exercised.
		if (ttimer >= tburst) {
			qa_release();
			trep += 1;
			if (trep >= treps) { ti += 1; trep = 0; }
			tstate = 0; ttimer = 0;
			exit;
		}
		if (timer >= nextswitch) {
			if (held >= 0) {
				keyboard_key_release(held);
				show_debug_message("AUTOQA INPUT f=" + string(timer) + " key=" + string(held) + " down=0");
			}
			held       = keys[qa_next() mod nkeys];
			nextswitch = timer + 2 + (qa_next() mod 11);
			keyboard_key_press(held);
			show_debug_message("AUTOQA INPUT f=" + string(timer) + " room=" + room_get_name(rooms[ri])
				+ " key=" + string(held) + " down=1 fuzz=1");
		}
		exit;
	}
	exit;
}

if (phase = 3) {                                   // fire User Event 1 on each instance
	if (roomtimer > 1800) {                        // watchdog: 60s per room
		show_debug_message("AUTOQA WATCHDOG room=" + string(ri));
		ri += 1; ii = 0; phase = 1; exit;
	}
	// tap action so dialogs opened by the previous interaction clear
	if ((timer mod 7) = 0 && variable_global_exists("key_action")) keyboard_key_press(global.key_action);
	if ((timer mod 7) = 1 && variable_global_exists("key_action")) keyboard_key_release(global.key_action);
	if ((timer mod 12) != 0) exit;
	if (ii >= instance_count) { ri += 1; ii = 0; phase = 1; exit; }
	var inst = instance_id_get(ii);
	if (!instance_exists(inst)) { ii += 1; exit; }
	if (inst.object_index = object_index) { ii += 1; exit; }
	var oname = object_get_name(inst.object_index);
	show_debug_message("AUTOQA STEP room=" + string(ri) + " name=" + room_get_name(rooms[ri])
		+ " inst=" + string(ii) + " obj=" + oname + " phase=interact");
	// Runtime errors are catchable, so a bad interaction is recorded and the
	// sweep carries on in the same launch instead of dying and relaunching.
	try {
		with (inst) event_user(1);
	} catch (_ex) {
		crashes += 1;
		show_debug_message("AUTOQA CAUGHT room=" + room_get_name(rooms[ri]) + " obj=" + oname
			+ " :: " + string(_ex.message) + " :: at " + string(_ex.script) + " line " + string(_ex.line));
	}
	ii += 1;
	exit;
}

if (phase = 4) {                                   // monkey: biased walk + taps
	if (roomtimer > monkeyframes) {
		qa_release();
		ri += 1; ii = 0; phase = 1;
		exit;
	}
	// Drive the *bound* keys rather than arbitrary scancodes, so this exercises
	// the real input path (sKey/key_eat) and honours any rebinding.
	//
	// Policy: pick a bound key at random; if it is a direction, half the time tap
	// it and half the time lean on it for 1-10s. Those long holds are what turn a
	// jittering random walk into actual travel, so the sweep reaches the far side
	// of a room, the exits, and the rooms beyond. Non-direction keys stay taps --
	// action advances dialog, start opens the menu, and neither wants holding.
	//
	// Every qa_next() draw sits on a schedule built from frame counters and
	// earlier draws only, never from game state, so the input stream stays
	// independent of what the game does with it: a bugfix cannot shift the
	// keypresses, which is what lets a replay still prove something.
	if (timer >= nextswitch) {
		if (held >= 0) {
			keyboard_key_release(held);
			show_debug_message("AUTOQA INPUT f=" + string(timer) + " key=" + string(held) + " down=0");
		}
		held = keys[qa_next() mod nkeys];
		// Always draw both, whichever branch is taken, so the stream stays aligned.
		var _mode = qa_next() mod 2;
		var _dur  = qa_next();
		var _isdir = 0;
		var _i;
		for (_i = 0; _i < 4; _i += 1) { if (mdirs[_i] = held) _isdir = 1; }
		var _hold;
		if (_isdir = 0)      _hold = 3;                        // tap
		else if (_mode = 0)  _hold = 3;                        // tap the direction
		else                 _hold = 30 + (_dur mod 271);      // hold it, 1-10s at 30fps
		nextswitch = timer + _hold;
		keyboard_key_press(held);
		show_debug_message("AUTOQA INPUT f=" + string(timer) + " room=" + room_get_name(rooms[ri])
			+ " key=" + string(held) + " down=1 hold=" + string(_hold));
	}

	// --- stuck: walked into a wall, so stop burning the rest of a 10s hold ----
	// Draw-free on purpose: a fixed clockwise rotation on a frame cooldown. It is
	// the one part that reacts to the world, so it must not consume the PRNG or it
	// would desynchronise the input stream and break replay.
	if (instance_exists(oBarkley)) {
		if (oBarkley.x = mlastx && oBarkley.y = mlasty) mstill += 1; else mstill = 0;
		mlastx = oBarkley.x;
		mlasty = oBarkley.y;
		var _dirheld = 0;
		var _j = 0;
		var _k;
		for (_k = 0; _k < 4; _k += 1) { if (mdirs[_k] = held) { _dirheld = 1; _j = _k; } }
		if (mstill > 18 && timer >= mstuckcool && _dirheld = 1) {
			keyboard_key_release(held);
			show_debug_message("AUTOQA INPUT f=" + string(timer) + " key=" + string(held) + " down=0");
			held = mdirs[(_j + 1) mod 4];
			keyboard_key_press(held);
			show_debug_message("AUTOQA INPUT f=" + string(timer) + " room=" + room_get_name(rooms[ri])
				+ " key=" + string(held) + " down=1 stuck=1");
			mstuckcool = timer + 12;
			mstill     = 0;
		}
	}
	exit;
}

if (phase = 6) {                                   // attacks: arm a solo-character battle
	if (ri > 4) {
		show_debug_message("AUTOQA DONE caught=" + string(crashes));
		game_end();
		exit;
	}
	if (albuilt != ri) {
		// Each regular-attack subtype is a separate case. Selecting Attack only
		// opens a real-time input minigame; Action/Cancel/Start/directions choose
		// materially different moves, so one generic "Attack" is not coverage.
		if (ri = 0) {
			alist = ["attack:Free Throw", "attack:Pass", "attack:Forward Jumper",
				"attack:Jumper", "attack:Fadeaway Jumper"];
		} else if (ri = 1) {
			alist = ["attack:Zauber Slash", "attack:Stab Dash", "attack:Zeta Scan"];
		} else if (ri = 2) {
			alist = ["attack:Eye Laser"];
		} else if (ri = 3) {
			// Cyberdwarf's regular attack is a combo system, not six isolated
			// buttons. Twenty deterministic monkey chains exercise ordering,
			// meter growth, repeated strikes and directional finishers.
			alist = [
				"attack:Combo Monkey 01", "attack:Combo Monkey 02",
				"attack:Combo Monkey 03", "attack:Combo Monkey 04",
				"attack:Combo Monkey 05", "attack:Combo Monkey 06",
				"attack:Combo Monkey 07", "attack:Combo Monkey 08",
				"attack:Combo Monkey 09", "attack:Combo Monkey 10",
				"attack:Combo Monkey 11", "attack:Combo Monkey 12",
				"attack:Combo Monkey 13", "attack:Combo Monkey 14",
				"attack:Combo Monkey 15", "attack:Combo Monkey 16",
				"attack:Combo Monkey 17", "attack:Combo Monkey 18",
				"attack:Combo Monkey 19", "attack:Combo Monkey 20"
			];
		} else {
			alist = ["attack:Accurate Shot", "attack:Rapid Fire", "attack:Mega Shot"];
		}
		// Skills come straight from the game's own eskill array (Alarm_0 granted
		// the full refSkill roster through sBattleSkill), followed by battle items
		// under Barkley so item execution is covered once rather than five times.
		var _k;
		for (_k = 0; global.char_eskill[ri, _k] != ""; _k += 1) {
			array_push(alist, global.char_eskill[ri, _k]);
		}
		if (ri = 0) {
			for (_k = 0; _k < array_length(qa_battleitems); _k += 1) {
				array_push(alist, "item:" + qa_battleitems[_k]);
			}
		}
		albuilt = ri;
		show_debug_message("AUTOQA ATTACKS char=" + string(global.char_name[ri])
			+ " attacks=" + string(array_length(alist)) + " from=" + string(ii));
	}
	if (ii >= array_length(alist)) { ri += 1; ii = 0; albuilt = -1; areent = 0; exit; }
	// The same leftover-transition state phase 1 clears before warping.
	if (variable_global_exists("cinema")) global.cinema = 0;
	if (variable_global_exists("freeze")) global.freeze = 0;
	if (variable_global_exists("posser")) global.posser = -1;
	if (variable_global_exists("roz"))    global.roz    = -1;
	if (variable_global_exists("roomer")) global.roomer = -1;
	qa_state();
	// qa_state rolled a random roster; pin it to just this character so every
	// launch fights the same fight and it is always this character's turn next.
	global.party[0] = -1;
	sParty("add", ri);
	global.char_chp[ri] = global.char_hp[ri];
	global.char_czp[ri] = global.char_zp[ri];
	show_debug_message("AUTOQA STEP room=" + string(ri) + " name=" + string(global.char_name[ri])
		+ " inst=" + string(ii) + " phase=arm");
	try {
		room_goto(RomInter);
	} catch (_ex) {
		crashes += 1;
		show_debug_message("AUTOQA CAUGHT room=RomInter obj=<room_goto>"
			+ " :: " + string(_ex.message) + " :: at " + string(_ex.script) + " line " + string(_ex.line));
	}
	qa_release();
	roomtimer = 0;
	astate = 1; atimer = 0;
	phase = 7;
	exit;
}

if (phase = 7) {                                   // attacks: drive the list
	if (room != RomInter) {
		// The battle concluded (an instant-kill sets `kill`, which sustain
		// leaves alone) or something ejected us. The cursor advanced when the
		// attack was dispatched, so re-arming continues down the list.
		if (astate = 2) {
			show_debug_message("AUTOQA ATTACK char=" + string(global.char_name[ri])
				+ " name=" + aname + " verdict=ENDED");
		}
		qa_release();
		areent += 1;
		if (areent > 40) {
			show_debug_message("AUTOQA ATTACKS giving up on char=" + string(global.char_name[ri])
				+ " after " + string(areent) + " re-entries");
			ri += 1; ii = 0; albuilt = -1; areent = 0;
		}
		phase = 6;
		exit;
	}
		if (astate = 1) {                              // wait for the menu on our turn
			atimer += 1;
			if (ii >= array_length(alist)) {
				// The final case completed; phase 6 owns advancing to the next
				// character and rebuilding its differently sized list.
				phase = 6;
				exit;
			}
			if (atimer > 900) {                        // 30s with no menu = a wedge
			show_debug_message("AUTOQA ATTACK char=" + string(global.char_name[ri])
				+ " name=" + string(alist[ii]) + " verdict=STALL-NOMENU");
			game_end();                            // driver stops on the verdict
			exit;
		}
		if (!instance_exists(oBattleMenu)) exit;
		if (oBattleMenu.state != "names") exit;
		if (!instance_exists(global.turn)) exit;
		if (global.turn.enemy != 0) exit;
			var _code = alist[ii];
			var _isregular = (string_copy(_code, 1, 7) = "attack:");
			var _isitem = (string_copy(_code, 1, 5) = "item:");
			acode = _code;
			if (_isregular) aname = string_delete(_code, 1, 7);
			else if (_isitem) aname = string_delete(_code, 1, 5);
			else aname = _code;
				show_debug_message("AUTOQA STEP room=" + string(ri) + " name=" + string(global.char_name[ri])
					+ " inst=" + string(ii) + " obj=" + aname + " phase=attack");
			aactor = global.turn;
			atarget = noone;
			atargettype = "";
			askillevent = -1;
			askillcost = 0;
			if (_isregular) {
				atarget = sEnemyTarget("random", 1);
			} else if (!_isitem) {
				// Resolve refSkill and any target here, in oAutoQA scope. Assigning
				// an outer local from inside a nested `with` was the original silent
				// failure that left Barkley sitting in postattack without executing.
				refSkill(aname);
				atargettype = global.c_target;
				askillevent = global.c_event;
				askillcost = global.c_mp;
				if (atargettype = "Enemy") atarget = sEnemyTarget("random", 1);
				else if (atargettype = "Ally" || atargettype = "Self") atarget = aactor;
			}
			var _targetrequired = _isregular || atargettype = "Enemy"
				|| atargettype = "Ally" || atargettype = "Self";
			if (!instance_exists(aactor)
				|| (_targetrequired && !instance_exists(atarget))) {
				show_debug_message("AUTOQA FATAL room=RomInter obj=" + aname
					+ " :: dispatch could not resolve actor/target before cursor advance");
				game_end();
				exit;
			}
			// Advance the cursor at dispatch, not completion: if execution kills the
		// process, the driver's resume lands on the NEXT attack, mirroring how
		// the other modes step one past the position that died.
		ii += 1;
		adispatched = 0;
		try {
			if (_isitem) {
				var _it = aname;
				sItem(_it, 1);              // ensure it is in the bag; alarm[3] consumes one
				if (_it = "Golden Potato") {
					// The menu's own special case never reaches alarm[3].
					with (oBattleMenu) {
						instance_create(0, 0, oBHiratio);
						state = "pause"; dname = 1; dene = 1; ditem = 0; dskill = 0; ddesc = 0;
						global.descriptor = "Potato Chaos";
						oBattler.hilight = 0;
						other.adispatched = 1;
					}
				} else {
					// Mirrors the menu's item-confirm branch: target the solo ally,
					// swap to the item pose, and fire the menu's item alarm.
					with (oBattleMenu) {
						action = "Item"; ection = other.aname;
						other.aactor.target = other.aactor;
						oBattler.hilight = 0; oBattler.selecte = 0;
						other.aactor.sprite_index = other.aactor.item;
						alarm[3] = 5;
						state = "wait";
						other.adispatched = 1;
					}
				}
			} else if (_isregular) {
				// Mirrors the menu's Attack confirm with the actor and target already
				// resolved in oAutoQA scope.
				with (oBattleMenu) {
					other.aactor.target = other.atarget;
					other.aactor.attack = 1;
					global.b_obj = other.aactor;
					oBattler.hilight = 0; oBattler.selecte = 0;
					inf = 0; pos1 = 0;
					state = "postattack";
					other.adispatched = 1;
				}
			} else {
				// Mirrors the menu's skill dispatch for each targeting shape.
				with (oBattleMenu) {
					action = other.aname;
					cost = other.askillcost;
					var _pt = other.atargettype;
					if (_pt = "Self" || _pt = "All Foe" || _pt = "All Ally") {
						global.b_obj = other.aactor;
						if (_pt = "Self") other.aactor.target = other.aactor;
						other.aactor.exec = other.askillevent;
						oBattler.hilight = 0;
						other.aactor._bp -= cost;
						global.descriptor = action;
						state = "wait";
						other.adispatched = 1;
					} else {
						other.aactor.target = other.atarget;
						oBattler.hilight = 0; oBattler.selecte = 0;
						other.aactor._bp -= cost;
						other.aactor.exec = other.askillevent;
						global.b_obj = other.aactor;
						state = "wait";
						other.adispatched = 1;
					}
				}
			}
		} catch (_ex) {
			crashes += 1;
			show_debug_message("AUTOQA CAUGHT room=RomInter obj=" + aname
				+ " :: " + string(_ex.message) + " :: at " + string(_ex.script) + " line " + string(_ex.line));
			show_debug_message("AUTOQA ATTACK char=" + string(global.char_name[ri])
				+ " name=" + aname + " verdict=CAUGHT");
			astate = 1; atimer = 0;
			exit;
		}
		if (!adispatched) {
			crashes += 1;
			show_debug_message("AUTOQA CAUGHT room=RomInter obj=" + aname
				+ " :: dispatch found no live target or menu");
			show_debug_message("AUTOQA ATTACK char=" + string(global.char_name[ri])
				+ " name=" + aname + " verdict=CAUGHT");
			astate = 1; atimer = 0;
			exit;
		}
			qa_release();
			ainputstate = 0; ainputcount = 0; ainputwait = 0;
			if (string_copy(aname, 1, 12) = "Combo Monkey") {
				if (!instance_exists(oBComboMeter)) {
					show_debug_message("AUTOQA FATAL room=RomInter obj=" + aname
						+ " :: Cyberdwarf combo meter was not created");
					game_end();
					exit;
				}
				achaincase = ii - 1;
				// Two randomized/cycled strikes plus a finisher form a real chain while
				// staying below the combo meter's strict 55-point budget in every case.
				achainlength = 3;
				achainstep = 0; achainmove = -1; achaincur = 0;
				show_debug_message("AUTOQA CHAIN attack=" + aname
					+ " length=" + string(achainlength));
			}
			astate = 2; atimer = 0;
		exit;
		}
		if (astate = 2) {                              // execution in flight
			atimer += 1;
			var _regular = (string_copy(acode, 1, 7) = "attack:");
			if (_regular && instance_exists(aactor)) {
				// One state-aware input sequence per subtype. No modulo retries: an
				// edge is sent only when the battler reports the matching ready state.
				var _cyberchain = (string_copy(aname, 1, 12) = "Combo Monkey");
				if (_cyberchain) {
					if (!instance_exists(oBComboMeter)) {
						show_debug_message("AUTOQA ATTACK char=" + string(global.char_name[ri])
							+ " name=" + aname + " verdict=STALL-CHAIN-METER");
						game_end();
						exit;
					}
					// Each chain has at least two strikes and ends with a directional
					// finisher. The first strike and finisher cycle across the six moves;
					// middle strikes come from the independent deterministic QA PRNG.
					var _chainready = (ainputstate = 0 && aactor.stage = 1.1)
						|| (ainputstate = 3 && aactor.stage = 2.1);
					if (_chainready && achainstep < achainlength) {
						if (achainstep = 0) achainmove = achaincase mod 3;
						else if (achainstep = achainlength - 1) achainmove = 3 + (achaincase mod 3);
						else achainmove = qa_next() mod 3;
						if (instance_exists(oBComboMeter)
							&& oBComboMeter.fill + achaincosts[achainmove] >= oBComboMeter.length) {
							show_debug_message("AUTOQA ATTACK char=" + string(global.char_name[ri])
								+ " name=" + aname + " verdict=STALL-CHAIN-BUDGET step="
								+ string(achainstep + 1) + " fill=" + string(oBComboMeter.fill)
								+ " cost=" + string(achaincosts[achainmove]));
							game_end();
							exit;
						}
						// The meter persists across attacks and is reset by the opener, so
						// the first move's authoritative pre-chord cursor is always zero.
						achaincur = (achainstep = 0) ? 0
							: (instance_exists(oBComboMeter) ? oBComboMeter.cur : 0);
						ainputcount = 1;
						show_debug_message("AUTOQA CHAIN attack=" + aname
							+ " step=" + string(achainstep + 1) + "/" + string(achainlength)
							+ " move=" + achainnames[achainmove] + " try=1");
						qa_cyber_chord(achainmove, 1);
						ainputstate = 1;
					} else if (ainputstate = 1) {
						qa_cyber_chord(achainmove, 0);
						ainputstate = 2; ainputwait = atimer + 1;
					} else if (ainputstate = 2 && atimer >= ainputwait) {
						// The meter records an accepted move at the old cursor. Actor `doing`
						// alone is insufficient: a meter timeout also forces doing=8 and used
						// to masquerade as a successful Push finisher.
						var _accepted = instance_exists(oBComboMeter)
							&& oBComboMeter.cur = achaincur + 1
							&& oBComboMeter.hit[achaincur, 1] = achainmove;
						if (_accepted) {
							achainstep += 1;
							ainputstate = (achainstep >= achainlength) ? 4 : 3;
							ainputwait = atimer + 1;
						} else if (ainputcount < 3 && aactor.stage = 2.1) {
							// The opener resets a persistent meter's cursor to zero; capture
							// again before the retry so proof is relative to this chord.
							achaincur = instance_exists(oBComboMeter) ? oBComboMeter.cur : 0;
							ainputcount += 1;
							show_debug_message("AUTOQA CHAIN attack=" + aname
								+ " step=" + string(achainstep + 1) + "/" + string(achainlength)
								+ " move=" + achainnames[achainmove]
								+ " try=" + string(ainputcount));
							qa_cyber_chord(achainmove, 1);
							ainputstate = 1;
						} else if (ainputcount >= 3) {
							show_debug_message("AUTOQA ATTACK char=" + string(global.char_name[ri])
								+ " name=" + aname + " verdict=STALL-CHAIN-INPUT step="
								+ string(achainstep + 1) + " move=" + achainnames[achainmove]
								+ " cur=" + string(instance_exists(oBComboMeter) ? oBComboMeter.cur : -1)
								+ " stage=" + string(aactor.stage));
							game_end();
							exit;
						}
					}
				} else {
					switch (aname) {
					case "Free Throw":
						if (ainputstate = 0 && atimer > 1 && aactor.fstage = 0) {
							qa_attack_key(global.key_action, 1); ainputstate = 1;
						} else if (ainputstate = 1 && aactor.fstage = 1 && aactor.prefin = 2) {
							qa_attack_key(global.key_action, 0); ainputstate = 2;
						} else if (ainputstate = 2 && aactor.fstage = 0.5 && aactor.fsh < 2) {
							qa_attack_key(global.key_action, 1); ainputstate = 3;
						} else if (ainputstate = 3 && aactor.fstage = 1 && aactor.prefin = 2) {
							qa_attack_key(global.key_action, 0); ainputstate = 4;
						}
						break;
					case "Pass":
						if (ainputstate = 0 && atimer > 1 && aactor.pstage = 0) {
							qa_attack_key(global.key_cancel, 1); ainputstate = 1;
						} else if (ainputstate = 1 && aactor.pstage = 1 && aactor.pass = 1) {
							qa_attack_key(global.key_cancel, 0); ainputstate = 2;
						}
						break;
					case "Forward Jumper":
					case "Jumper":
					case "Fadeaway Jumper":
						if (ainputstate = 0 && atimer > 1 && aactor.jstage = 0) {
							if (aname = "Forward Jumper") qa_attack_key(global.key_left, 1);
							if (aname = "Fadeaway Jumper") qa_attack_key(global.key_right, 1);
							qa_attack_key(global.key_up, 1); ainputstate = 1;
						} else if (ainputstate = 1 && aactor.jstage = 1 && aactor.prefin = 1) {
							qa_attack_key(global.key_up, 0);
							if (aname = "Forward Jumper") qa_attack_key(global.key_left, 0);
							if (aname = "Fadeaway Jumper") qa_attack_key(global.key_right, 0);
							ainputstate = 2;
						}
						break;
					case "Zauber Slash":
						if (ainputstate = 0 && atimer > 1) {
							qa_attack_key(global.key_action, 1); ainputstate = 1;
						} else if (ainputstate = 1 && aactor.doing = 9) {
							qa_attack_key(global.key_action, 0); ainputstate = 2;
						}
						break;
					case "Stab Dash":
						if (ainputstate = 0 && atimer > 1) {
							qa_attack_key(global.key_cancel, 1); ainputstate = 1;
						} else if (ainputstate = 1 && aactor.doing = 10) {
							qa_attack_key(global.key_cancel, 0); ainputstate = 2;
						} else if (ainputstate = 2 && instance_exists(oBKata) && oBKata.a0 = 1 && oBKata.c0 = 0) {
							qa_attack_key(global.key_action, 1); ainputstate = 3;
						} else if (ainputstate = 3) {
							qa_attack_key(global.key_action, 0); ainputstate = 4;
						} else if (ainputstate = 4 && instance_exists(oBKata) && oBKata.c0 = 1 && oBKata.a1 = 1 && oBKata.c1 = 0) {
							qa_attack_key(global.key_action, 1); ainputstate = 5;
						} else if (ainputstate = 5) {
							qa_attack_key(global.key_action, 0); ainputstate = 6;
						} else if (ainputstate = 6 && instance_exists(oBKata) && oBKata.c1 = 1 && oBKata.a2 = 1 && oBKata.c2 = 0) {
							qa_attack_key(global.key_action, 1); ainputstate = 7;
						} else if (ainputstate = 7) {
							qa_attack_key(global.key_action, 0); ainputstate = 8;
						}
						break;
					case "Zeta Scan":
						if (ainputstate = 0 && atimer > 1) {
							qa_attack_key(global.key_start, 1); ainputstate = 1;
						} else if (ainputstate = 1 && aactor.doing = 8) {
							qa_attack_key(global.key_start, 0); ainputstate = 2;
						}
						break;
					case "Eye Laser":
						if (ainputstate = 0 && atimer > 1) {
							qa_attack_key(global.key_action, 1); ainputstate = 1;
						} else if (ainputstate = 1 && aactor.stage = 1) {
							qa_attack_key(global.key_action, 0); ainputstate = 2;
						}
						break;
					case "Accurate Shot":
						if (ainputstate = 0 && atimer > 1) {
							qa_attack_key(global.key_action, 1); ainputstate = 1;
						} else if (ainputstate = 1 && (instance_exists(oBReticule) || aactor.doshot > 0)) {
							qa_attack_key(global.key_action, 0); ainputstate = 2;
						}
						break;
					case "Rapid Fire":
						if (ainputstate = 0 && ainputcount < 5 && aactor.mash = 0) {
							qa_attack_key(global.key_cancel, 1); ainputstate = 1;
						} else if (ainputstate = 1) {
							qa_attack_key(global.key_cancel, 0); ainputcount += 1; ainputstate = 0;
						}
						break;
					case "Mega Shot":
						if (ainputstate = 0 && atimer > 1) {
							qa_attack_key(global.key_start, 1); ainputstate = 1;
						} else if (ainputstate = 1 && instance_exists(oBCharger) && oBCharger.yy >= 50) {
							qa_attack_key(global.key_start, 0); ainputstate = 2;
						}
							break;
					}
				}
			} else if (!_regular) {
				// One bounded prompt edge for a skill/item. Add a skill-specific
				// state machine only when its real execution path requires one.
				if (atimer = 2) qa_attack_key(global.key_action, 1);
				if (atimer = 6) qa_attack_key(global.key_action, 0);
			}
		if (atimer > 1800) {                       // 60s per attack = a wedge
			// Dump the state machine so the wedge can be diagnosed from the log.
			var _diag = "AUTOQA ATTACK char=" + string(global.char_name[ri])
				+ " name=" + aname + " verdict=STALL";
			if (instance_exists(global.turn)) {
				_diag += " doing=" + string(global.turn.doing)
					+ " exec=" + string(global.turn.exec)
					+ " attack=" + string(global.turn.attack)
					+ " prefin=" + string(global.turn.prefin);
				if (variable_instance_exists(global.turn, "stage"))
					_diag += " stage=" + string(global.turn.stage);
				if (variable_instance_exists(global.turn, "wdone"))
					_diag += " wdone=" + string(global.turn.wdone);
			}
			if (instance_exists(oBattleMenu)) _diag += " menustate=" + string(oBattleMenu.state);
			show_debug_message(_diag);
			game_end();                            // driver stops on the verdict
			exit;
		}
		// Done when the menu offers our next turn. It went to "wait"/"postattack"
		// at dispatch, so "names" can only mean the round completed.
			if (instance_exists(oBattleMenu) && oBattleMenu.state = "names"
				&& instance_exists(global.turn) && global.turn.enemy = 0 && atimer > 10) {
				if (string_copy(aname, 1, 12) = "Combo Monkey"
					&& achainstep < achainlength) {
					show_debug_message("AUTOQA ATTACK char=" + string(global.char_name[ri])
						+ " name=" + aname + " verdict=STALL-CHAIN completed="
						+ string(achainstep) + " planned=" + string(achainlength));
					game_end();
					exit;
				}
				show_debug_message("AUTOQA ATTACK char=" + string(global.char_name[ri])
				+ " name=" + aname + " verdict=PASS");
			qa_release();
			astate = 1; atimer = 0;
		}
		exit;
	}
	exit;
}
