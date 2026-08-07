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

// CRT filter preset table (global.sat[6]; see global.crtname for labels)
var crt = 0;
if (variable_global_exists("sat")) crt = global.sat[6];
var fam = 0; // 0 = raw nearest, 1 = shCRT, 2 = shCRTMask, 3 = shCRTTV
var p_scan = 0, p_pitch = 1, p_vig = 0;
var p_mask = 0, p_boost = 1;
var p_curve = 0, p_sdepth = 0, p_sspeed = 0, p_spitch = 6.28318;
var p_stripe = 0, p_shim = 0, p_bright = 2.1, p_ghost = 1;
if (crt == 1) { fam = 1; }                                          // PIXEL: sharp-bilinear only
if (crt == 2) { fam = 1; p_scan = 0.10; p_vig = 0.10; }             // SUBTLE
if (crt == 3) { fam = 1; p_scan = 0.22; p_vig = 0.14; }             // SCANLINES
if (crt == 4) { fam = 1; p_scan = 0.16; p_pitch = 2; p_vig = 0.06; }// VGA double-scan
if (crt == 5) { fam = 2; p_scan = 0.25; p_mask = 0.20; p_boost = 1.10; } // TRINITRON
if (crt == 6) { fam = 2; p_scan = 0.38; p_mask = 0.30; p_boost = 1.18; } // ARCADE
if (crt == 7) { fam = 3; p_sdepth = 0.20; p_stripe = 0.35; p_shim = 0.0003; p_ghost = 0.8; } // TV SOFT
if (crt == 8) { fam = 3; p_curve = 1; p_sdepth = 0.55; p_sspeed = 3.5; p_spitch = 1.5;
	p_stripe = 0.65; p_shim = 0.0017; p_bright = 2.6; p_ghost = 0.8; }  // NEWPIXIE
if (crt == 9) { fam = 3; p_curve = 0.25; p_sdepth = 0.25; p_stripe = 0.35;
	p_shim = 0.0006; p_ghost = 0.55; }                                  // GHOST
if (fam == 1 && !crtok) fam = 0;
if (fam == 2 && !crtmaskok) fam = 0;
if (fam == 3 && !crttvok) fam = 0;
// too few output pixels per beam line -> fade scanlines out instead of moire
if (fam == 1) p_scan *= min(1, max(0, dh / (sh * p_pitch) - 1));
if (fam == 2) p_scan *= min(1, max(0, dh / sh - 1));

if (fam == 3) {
	// phosphor persistence: this frame blended over the tail of the last few
	if (!surface_exists(crtaccum)) {
		crtaccum = surface_create(sw, sh);
		surface_set_target(crtaccum);
		draw_clear(c_black);
		surface_reset_target();
	}
	surface_set_target(crtaccum);
	draw_set_alpha(p_ghost);
	draw_surface(application_surface, 0, 0);
	draw_set_alpha(1);
	surface_reset_target();
	gpu_set_texfilter(true);
	shader_set(shCRTTV);
	shader_set_uniform_f(u_tv_time, (current_time mod 100000) / 1000);
	shader_set_uniform_f(u_tv_native, sw, sh);
	shader_set_uniform_f(u_tv_curve, p_curve);
	shader_set_uniform_f(u_tv_sdepth, p_sdepth);
	shader_set_uniform_f(u_tv_sspeed, p_sspeed);
	shader_set_uniform_f(u_tv_spitch, p_spitch);
	shader_set_uniform_f(u_tv_stripe, p_stripe);
	shader_set_uniform_f(u_tv_shim, p_shim);
	shader_set_uniform_f(u_tv_bright, p_bright);
	draw_surface_stretched(crtaccum, ox, oy, dw, dh);
	shader_reset();
	gpu_set_texfilter(false);
} else {
	if (surface_exists(crtaccum)) { surface_free(crtaccum); crtaccum = -1; }
	if (fam == 1) {
		gpu_set_texfilter(true); // sharp-bilinear needs the sampler
		shader_set(shCRT);
		shader_set_uniform_f(u_crt_native, sw, sh);
		shader_set_uniform_f(u_crt_sharp, max(1, dh / sh));
		shader_set_uniform_f(u_crt_scan, p_scan);
		shader_set_uniform_f(u_crt_pitch, p_pitch);
		shader_set_uniform_f(u_crt_vig, p_vig);
		draw_surface_stretched(application_surface, ox, oy, dw, dh);
		shader_reset();
		gpu_set_texfilter(false);
	} else if (fam == 2) {
		gpu_set_texfilter(true);
		shader_set(shCRTMask);
		shader_set_uniform_f(u_msk_native, sw, sh);
		shader_set_uniform_f(u_msk_sharp, max(1, dh / sh));
		shader_set_uniform_f(u_msk_scan, p_scan);
		shader_set_uniform_f(u_msk_mask, p_mask);
		shader_set_uniform_f(u_msk_boost, p_boost);
		draw_surface_stretched(application_surface, ox, oy, dw, dh);
		shader_reset();
		gpu_set_texfilter(false);
	} else {
		gpu_set_texfilter(false); // chonky pixels
		draw_surface_stretched(application_surface, ox, oy, dw, dh);
	}
}

// filter-name toast after a number-key swap
if (crtnotice > 0) {
	crtnotice -= 1;
	var ts = max(1, (dw / sw) * 0.5);
	sFont(Courier8, c_yellow, 0, 0);
	draw_text_transformed(ox + 4 * ts, oy + 4 * ts,
		string_hash_to_newline(global.crtname[crt]), ts, ts, 0);
}
draw_set_alpha(pa);
draw_set_color(pc);
