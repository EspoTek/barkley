// Draw GUI: present the native 320x240 game surface into the window.
// The GUI layer is composited to the real window by the runner itself, so this
// stays correct however the runtime manages the backbuffer (the 2026 runtime
// broke the old Post Draw compositor: it kept auto-presenting the application
// surface stretched to the window, and application_set_position is gone).
if (!surface_exists(application_surface)) exit;
var ww = window_get_width();
var wh = window_get_height();
if (ww <= 0 || wh <= 0) exit;
display_set_gui_size(ww, wh);
var sw = surface_get_width(application_surface);
var sh = surface_get_height(application_surface);
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
draw_set_color(c_black);
draw_rectangle(0, 0, ww, wh, false); // borders; also hides the auto-present
draw_set_color(c_white);
gpu_set_texfilter(false); // chonky pixels
draw_surface_stretched(application_surface, ox, oy, dw, dh);
draw_set_alpha(pa);
draw_set_color(pc);
