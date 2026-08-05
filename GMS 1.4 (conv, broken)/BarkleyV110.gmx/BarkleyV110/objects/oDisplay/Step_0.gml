// apply the SCREEN setting when it changes (menu edit or config load)
if (!variable_global_exists("sat")) exit;
if (global.sat[1] != lastfs) {
	lastfs = global.sat[1];
	window_set_fullscreen(lastfs == 1);
}
