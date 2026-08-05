// Presents the game surface into the window: fit-window or integer scaling,
// always nearest-neighbour. Persistent; created once at Game Start.
persistent = true;
application_surface_draw_enable(false);
lastfs = -1;

// gamepad bridge state
padheld = array_create(8, 0);
padkey = array_create(8, 0);
