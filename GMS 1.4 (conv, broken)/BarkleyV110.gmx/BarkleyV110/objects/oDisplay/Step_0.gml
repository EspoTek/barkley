// apply the SCREEN setting when it changes (menu edit or config load)
if (!variable_global_exists("sat")) exit;
if (global.sat[1] != lastfs) {
	lastfs = global.sat[1];
	window_set_fullscreen(lastfs == 1);
}

// live CRT-filter swap on the number row (1 = off, 2-9 and 0 = presets);
// the FILTER settings row edits the same global.sat[6]
var pick = -1;
if (keyboard_check_pressed(ord("1"))) pick = 0;
if (keyboard_check_pressed(ord("2"))) pick = 1;
if (keyboard_check_pressed(ord("3"))) pick = 2;
if (keyboard_check_pressed(ord("4"))) pick = 3;
if (keyboard_check_pressed(ord("5"))) pick = 4;
if (keyboard_check_pressed(ord("6"))) pick = 5;
if (keyboard_check_pressed(ord("7"))) pick = 6;
if (keyboard_check_pressed(ord("8"))) pick = 7;
if (keyboard_check_pressed(ord("9"))) pick = 8;
if (keyboard_check_pressed(ord("0"))) pick = 9;
// PgUp/PgDn cycle through the whole preset list (more than the number row)
if (keyboard_check_pressed(vk_pagedown)) pick = (global.sat[6] + 1) mod global.crtcount;
if (keyboard_check_pressed(vk_pageup)) pick = (global.sat[6] + global.crtcount - 1) mod global.crtcount;
if (pick >= 0) {
	global.sat[6] = pick;
	crtnotice = 75; // ~2.5s at 30fps
}
