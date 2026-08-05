// Post Draw: blit the native-resolution application surface to the window.
var ww = window_get_width();
var wh = window_get_height();
if (ww <= 0 || wh <= 0) exit;
var sw = surface_get_width(application_surface);
var sh = surface_get_height(application_surface);
draw_clear(c_black);
var mode = 0;
if (variable_global_exists("sat")) mode = global.sat[0];
var dw, dh;
if (mode >= 1) {
	// strict integer upscale, black borders
	var s = max(1, min(ww div sw, wh div sh));
	dw = sw * s; dh = sh * s;
} else {
	// fit window, aspect preserved (fractional scale allowed)
	var f = min(ww / sw, wh / sh);
	dw = round(sw * f); dh = round(sh * f);
}
var ox = (ww - dw) div 2;
var oy = (wh - dh) div 2;
// the game leaves draw alpha/colour in fade states; neutralize for the blit
var pa = draw_get_alpha();
var pc = draw_get_color();
draw_set_alpha(1);
draw_set_color(c_white);
gpu_set_texfilter(false); // chonky pixels
draw_surface_stretched(application_surface, ox, oy, dw, dh);
draw_set_alpha(pa);
draw_set_color(pc);
