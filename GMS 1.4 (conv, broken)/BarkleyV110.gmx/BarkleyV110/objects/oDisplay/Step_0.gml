// apply the SCREEN setting when it changes (menu edit or config load)
if (!variable_global_exists("sat")) exit;
if (global.sat[1] != lastfs) {
	lastfs = global.sat[1];
	window_set_fullscreen(lastfs == 1);
}

// +/- tune the Dosbox CRT corner warp (percent of the full mattias curve)
// while that filter is active; the value is saved to config.txt immediately.
// Filter selection itself has no hotkeys -- use the FILTER settings row.
if (global.sat[6] == 2) {
	// the -/= keys report different codes per platform: 189/187 (Windows
	// OEM), 45/61 (mac runner, raw ASCII), vk_subtract/vk_add (numpad)
	var dwarp = 0;
	if (keyboard_check_pressed(189) || keyboard_check_pressed(45) || keyboard_check_pressed(vk_subtract)) dwarp = -1;
	if (keyboard_check_pressed(187) || keyboard_check_pressed(61) || keyboard_check_pressed(vk_add)) dwarp = 1;
	if (dwarp != 0) {
		global.sat[7] = min(25, max(0, global.sat[7] + dwarp));
		crtnotice = 75; // ~2.5s at 30fps
		sConfig(1);
	}
}
