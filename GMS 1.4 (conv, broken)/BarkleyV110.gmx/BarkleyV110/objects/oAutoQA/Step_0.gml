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
	if (inbattle = 0) {
		inbattle  = 1;
		bsustain  = ((qa_next() mod 5) != 0);   // 4 in 5 survivable, 1 in 5 a wipe
		show_debug_message("AUTOQA BATTLE start sustain=" + string(bsustain));
	}
	if (bsustain && instance_exists(oBattler)) {
		with (oBattler) { if (enemy = 0) _vp = _rvp; }
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

if (ri >= nrooms) {
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
