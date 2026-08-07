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

// CRT filter (global.sat[6]): 0 off, 1 Arcade, 2 Dosbox CRT.  Selected via
// the FILTER settings row (no hotkeys).  global.sat[7] = Dosbox curve warp
// in percent (0..25, default 10), tuned live with the +/- keys while that
// filter is on; both persist in config.txt (saved immediately on change).
global.crtname[0] = "OFF";
global.crtname[1] = "ARCADE";
global.crtname[2] = "DOSBOX CRT";
crtmaskok = shader_is_compiled(shCRTMask);
crtdbok = shader_is_compiled(shCRTDosbox);
crtaccum = -1;   // ghosting buffer for the Dosbox filter
crtnotice = 0;   // frames left to show the filter-name toast
u_msk_native = shader_get_uniform(shCRTMask, "u_native");
u_msk_sharp = shader_get_uniform(shCRTMask, "u_sharp");
u_msk_scan = shader_get_uniform(shCRTMask, "u_scan");
u_msk_mask = shader_get_uniform(shCRTMask, "u_mask");
u_msk_boost = shader_get_uniform(shCRTMask, "u_boost");
u_db_time = shader_get_uniform(shCRTDosbox, "u_time");
u_db_outsize = shader_get_uniform(shCRTDosbox, "u_outsize");
u_db_warp = shader_get_uniform(shCRTDosbox, "u_warp");
u_db_blurbuf = shader_get_sampler_index(shCRTDosbox, "u_blurbuf");
