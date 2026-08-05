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
if (instance_exists(oBattler)) {
	with (oBattler) { if (enemy = 0) _vp = _rvp; }
}

if (ri >= nrooms) {
	show_debug_message("AUTOQA DONE caught=" + string(crashes));
	game_end();
	exit;
}

if (phase = 1) {                                   // warp into the target room
	show_debug_message("AUTOQA STEP room=" + string(ri) + " name=" + room_get_name(rooms[ri]) + " phase=enter");
	if (variable_global_exists("cinema")) global.cinema = 0;
	if (variable_global_exists("freeze")) global.freeze = 0;
	try {
		room_goto(rooms[ri]);
	} catch (_ex) {
		crashes += 1;
		show_debug_message("AUTOQA CAUGHT room=" + room_get_name(rooms[ri]) + " obj=<room_goto>"
			+ " :: " + string(_ex.message) + " :: at " + string(_ex.script) + " line " + string(_ex.line));
	}
	roomtimer = 0;
	if (held >= 0) { keyboard_key_release(held); held = -1; }
	phase = 2;
	exit;
}

if (phase = 2) {                                   // let the room settle and draw
	if (roomtimer < 40) exit;
	if (mode = "rooms")  { ri += 1; ii = 0; phase = 1; exit; }
	if (mode = "monkey") { phase = 4; exit; }
	phase = 3;
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

if (phase = 4) {                                   // monkey: mash the bound keys
	if (roomtimer > monkeyframes) {
		if (held >= 0) { keyboard_key_release(held); held = -1; }
		ri += 1; ii = 0; phase = 1;
		exit;
	}
	// Drive the *bound* keys rather than arbitrary scancodes, so this exercises
	// the real input path (sKey/key_eat) and honours any rebinding.
	if (timer >= nextswitch) {
		if (held >= 0) {
			keyboard_key_release(held);
			show_debug_message("AUTOQA INPUT f=" + string(timer) + " key=" + string(held) + " down=0");
		}
		held       = keys[qa_next() mod nkeys];
		nextswitch = timer + 2 + (qa_next() mod 11);
		keyboard_key_press(held);
		show_debug_message("AUTOQA INPUT f=" + string(timer) + " room=" + room_get_name(rooms[ri])
			+ " key=" + string(held) + " down=1");
	}
	exit;
}
