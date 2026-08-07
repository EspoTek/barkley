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
//port: publish the blit rect so overlays (oVoiceTest) can map window mouse
//coords back to 320x240 game space under this custom letterboxing
global.disp_ox = ox; global.disp_oy = oy;
global.disp_dw = dw; global.disp_dh = dh;
// the game leaves draw alpha/colour in fade states; neutralize for the blit
var pa = draw_get_alpha();
var pc = draw_get_color();
draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(0, 0, ww, wh, false); // borders; also hides the auto-present
draw_set_color(c_white);

// CRT filter: 0 off, 1 Arcade (shCRTMask), 2 Dosbox CRT (shCRTDosbox)
var crt = 0;
if (variable_global_exists("sat")) crt = global.sat[6];
if (crt == 2 && crtdbok) {
	// phosphor persistence: this frame blended over the tail of the last few
	if (!surface_exists(crtaccum)) {
		crtaccum = surface_create(sw, sh);
		surface_set_target(crtaccum);
		draw_clear(c_black);
		surface_reset_target();
	}
	surface_set_target(crtaccum);
	draw_set_alpha(0.6);
	draw_surface(application_surface, 0, 0);
	draw_set_alpha(1);
	surface_reset_target();
	gpu_set_texfilter(true);
	shader_set(shCRTDosbox);
	shader_set_uniform_f(u_db_time, (current_time mod 100000) / 1000);
	shader_set_uniform_f(u_db_outsize, dw, dh);
	shader_set_uniform_f(u_db_warp, global.sat[7] / 100);
	shader_set_uniform_f(u_db_shadow, global.sat[8] / 25);
	shader_set_uniform_f(u_db_vig, global.sat[9] / 25);
	shader_set_uniform_f(u_db_scan, global.sat[10] / 25);
	shader_set_uniform_f(u_db_mask, global.sat[11] / 25);
	shader_set_uniform_f(u_db_grain, global.sat[12] / 25);
	shader_set_uniform_f(u_db_ghost, global.sat[13] / 25);
	texture_set_stage(u_db_blurbuf, surface_get_texture(crtaccum));
	draw_surface_stretched(application_surface, ox, oy, dw, dh);
	shader_reset();
	gpu_set_texfilter(false);
} else {
	if (surface_exists(crtaccum)) { surface_free(crtaccum); crtaccum = -1; }
	if (crt == 1 && crtmaskok) {
		gpu_set_texfilter(true); // sharp-bilinear needs the sampler
		shader_set(shCRTMask);
		shader_set_uniform_f(u_msk_native, sw, sh);
		shader_set_uniform_f(u_msk_sharp, max(1, dh / sh));
		// deep beam + strong grille; scanlines fade out if the window is
		// too small to render them without moire
		shader_set_uniform_f(u_msk_scan, 0.38 * min(1, max(0, dh / sh - 1)));
		shader_set_uniform_f(u_msk_mask, 0.30);
		shader_set_uniform_f(u_msk_boost, 1.18);
		draw_surface_stretched(application_surface, ox, oy, dw, dh);
		shader_reset();
		gpu_set_texfilter(false);
	} else {
		gpu_set_texfilter(false); // chonky pixels
		draw_surface_stretched(application_surface, ox, oy, dw, dh);
	}
}

// filter-name toast after a hotkey change; shows the warp level for Dosbox
if (crtnotice > 0) {
	crtnotice -= 1;
	var lbl = global.crtname[crt];
	if (crt == 2) lbl += "  WARP " + string(global.sat[7]);
	var ts = max(1, (dw / sw) * 0.5);
	sFont(Courier8, c_yellow, 0, 0);
	draw_text_transformed(ox + 4 * ts, oy + 4 * ts,
		string_hash_to_newline(lbl), ts, ts, 0);
}
draw_set_alpha(pa);
draw_set_color(pc);
