if (!started) exit;
timer     += 1;
roomtimer += 1;

// keep dialogs/cutscenes moving so a room does not wedge the sweep
if (variable_global_exists("key_action") && (timer mod 7) = 0) {
	keyboard_key_press(global.key_action);
} else if (variable_global_exists("key_action") && (timer mod 7) = 1) {
	keyboard_key_release(global.key_action);
}

if (ri >= nrooms) {
	show_debug_message("AUTOQA DONE");
	game_end();
	exit;
}

if (phase = 1) {                                   // warp into the target room
	show_debug_message("AUTOQA STEP room=" + string(ri) + " name=" + room_get_name(rooms[ri]) + " phase=enter");
	if (variable_global_exists("cinema")) global.cinema = 0;
	if (variable_global_exists("freeze")) global.freeze = 0;
	room_goto(rooms[ri]);
	roomtimer = 0;
	phase = 2;
	exit;
}

if (phase = 2) {                                   // let the room settle and draw
	if (roomtimer < 40) exit;
	if (mode = "rooms") { ri += 1; ii = 0; phase = 1; exit; }
	phase = 3;
	exit;
}

if (phase = 3) {                                   // fire User Event 1 on each instance
	if (roomtimer > 1800) {                        // watchdog: 60s per room
		show_debug_message("AUTOQA WATCHDOG room=" + string(ri));
		ri += 1; ii = 0; phase = 1; exit;
	}
	if ((timer mod 12) != 0) exit;
	if (ii >= instance_count) { ri += 1; ii = 0; phase = 1; exit; }
	var inst = instance_id_get(ii);
	if (!instance_exists(inst)) { ii += 1; exit; }
	if (inst.object_index = object_index) { ii += 1; exit; }
	show_debug_message("AUTOQA STEP room=" + string(ri) + " name=" + room_get_name(rooms[ri])
		+ " inst=" + string(ii) + " obj=" + object_get_name(inst.object_index) + " phase=interact");
	with (inst) event_user(1);
	ii += 1;
	exit;
}
