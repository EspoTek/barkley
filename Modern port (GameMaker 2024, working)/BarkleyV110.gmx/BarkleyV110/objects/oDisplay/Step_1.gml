// Begin Step: gamepad -> keyboard bridge. Synthesizes presses of the BOUND
// keys (global.key_*), so menu rebinding keeps working. Only releases keys
// this bridge itself pressed; physical keyboard is never interfered with.
if (!variable_global_exists("key_up")) exit;
var pad = -1;
var n = gamepad_get_device_count();
for (var i = 0; i < n; i += 1) {
	if (gamepad_is_connected(i)) { pad = i; break; }
}
var binds, held;
binds = [global.key_up, global.key_down, global.key_left, global.key_right,
         global.key_action, global.key_cancel, global.key_start];
if (pad < 0) {
	for (var j = 0; j < 7; j += 1) {
		if (padheld[j]) { keyboard_key_release(padkey[j]); padheld[j] = 0; }
	}
	exit;
}
var lh = gamepad_axis_value(pad, gp_axislh);
var lv = gamepad_axis_value(pad, gp_axislv);
held = [gamepad_button_check(pad, gp_padu) || lv < -0.5,
        gamepad_button_check(pad, gp_padd) || lv > 0.5,
        gamepad_button_check(pad, gp_padl) || lh < -0.5,
        gamepad_button_check(pad, gp_padr) || lh > 0.5,
        gamepad_button_check(pad, gp_face1),
        gamepad_button_check(pad, gp_face2),
        gamepad_button_check(pad, gp_start)];
for (var j = 0; j < 7; j += 1) {
	if (held[j] && !padheld[j]) {
		padkey[j] = binds[j];
		keyboard_key_press(padkey[j]);
		padheld[j] = 1;
	} else if (!held[j] && padheld[j]) {
		keyboard_key_release(padkey[j]);
		padheld[j] = 0;
	}
}
