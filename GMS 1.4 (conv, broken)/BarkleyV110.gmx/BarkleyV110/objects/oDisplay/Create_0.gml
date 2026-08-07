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
