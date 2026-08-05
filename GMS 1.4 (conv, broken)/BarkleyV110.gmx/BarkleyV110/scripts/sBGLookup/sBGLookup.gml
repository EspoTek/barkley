function sBGLookup(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	// Resolve a room-background resource name to a drawable asset index.
	// Backgrounds now hold their real images (restored from the BG/ folder);
	// after import into modern GameMaker they become same-named sprites.
	var idx;
	idx = asset_get_index(argument0);
	if (idx < 0) show_error("sBGLookup: no asset named '" + string(argument0) + "'", true);
	return idx;



}
