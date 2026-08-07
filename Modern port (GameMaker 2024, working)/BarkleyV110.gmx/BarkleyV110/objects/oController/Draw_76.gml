// Pre Draw (port): keep the game rendering at native 320x240 no matter the window size,
// so the Post Draw composite scales a fixed-size frame.
if (surface_exists(application_surface))
if (surface_get_width(application_surface)!=320 || surface_get_height(application_surface)!=240)
	surface_resize(application_surface, 320, 240);
