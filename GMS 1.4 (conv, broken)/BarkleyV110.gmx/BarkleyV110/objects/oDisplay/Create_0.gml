// Presents the game surface into the window: fit-window or integer scaling,
// always nearest-neighbour. Persistent; created once at Game Start.
// Presentation happens in Draw GUI (the 2026 runtime auto-presents the
// application surface over anything drawn in Post Draw; the GUI layer is
// composited after it, so our black borders + blit always win).
persistent = true;
application_surface_draw_enable(false);
window_set_colour(c_black); // letterbox/pillarbox bars
lastfs = -1;

// gamepad bridge state
padheld = array_create(8, 0);
padkey = array_create(8, 0);

// CRT filter presets (global.sat[6] = 0..9, live-swappable on the number row)
global.crtname[0] = "OFF";
global.crtname[1] = "PIXEL";
global.crtname[2] = "SUBTLE";
global.crtname[3] = "SCANLINES";
global.crtname[4] = "VGA";
global.crtname[5] = "TRINITRON";
global.crtname[6] = "ARCADE";
global.crtname[7] = "TV SOFT";
global.crtname[8] = "NEWPIXIE";
global.crtname[9] = "GHOST";
crtok = shader_is_compiled(shCRT);
crtmaskok = shader_is_compiled(shCRTMask);
crttvok = shader_is_compiled(shCRTTV);
crtaccum = -1;   // ghosting buffer for the TV family
crtnotice = 0;   // frames left to show the filter-name toast
u_crt_native = shader_get_uniform(shCRT, "u_native");
u_crt_sharp = shader_get_uniform(shCRT, "u_sharp");
u_crt_scan = shader_get_uniform(shCRT, "u_scan");
u_crt_pitch = shader_get_uniform(shCRT, "u_pitch");
u_crt_vig = shader_get_uniform(shCRT, "u_vig");
u_msk_native = shader_get_uniform(shCRTMask, "u_native");
u_msk_sharp = shader_get_uniform(shCRTMask, "u_sharp");
u_msk_scan = shader_get_uniform(shCRTMask, "u_scan");
u_msk_mask = shader_get_uniform(shCRTMask, "u_mask");
u_msk_boost = shader_get_uniform(shCRTMask, "u_boost");
u_tv_time = shader_get_uniform(shCRTTV, "u_time");
u_tv_native = shader_get_uniform(shCRTTV, "u_native");
u_tv_curve = shader_get_uniform(shCRTTV, "u_curve");
u_tv_sdepth = shader_get_uniform(shCRTTV, "u_sdepth");
u_tv_sspeed = shader_get_uniform(shCRTTV, "u_sspeed");
u_tv_spitch = shader_get_uniform(shCRTTV, "u_spitch");
u_tv_stripe = shader_get_uniform(shCRTTV, "u_stripe");
u_tv_shim = shader_get_uniform(shCRTTV, "u_shim");
u_tv_bright = shader_get_uniform(shCRTTV, "u_bright");
