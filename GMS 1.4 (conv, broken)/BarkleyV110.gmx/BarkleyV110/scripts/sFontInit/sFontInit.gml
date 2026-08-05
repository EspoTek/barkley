function sFontInit() {
	// Port: the five text fonts below are the ORIGINAL glyph bitmaps, lifted out
	// of the compiled 2008/2014 build (BarkleyV120.exe stores each font as a
	// pre-rendered atlas).  GM6 rasterised fonts at compile time from Windows
	// GDI, so "GZFruit" and "MingLiU" -- neither of which exists outside that
	// machine -- can't be re-created from a system typeface here; re-rasterising
	// them substituted a fallback face and lost ~2px of glyph height, which is
	// what made the text hard to read.
	//
	// Each sprite holds chars 32..127 in order, one per subimage, padded so the
	// proportional-spacing pass reproduces GM6's original advance widths.
	// The macros in scripts/macros redirect the old font resource names here, so
	// every existing draw_set_font()/sFont() call site is unchanged.
	var map, i;
	map = "";
	for (i = 32; i < 128; i += 1) map += chr(i);
	global.__fCourier8 = font_add_sprite_ext(sprFontCourier8, map, true, 0);
	global.__fArial8 = font_add_sprite_ext(sprFontArial8, map, true, 0);
	global.__fCreditsText = font_add_sprite_ext(sprFontCreditsText, map, true, 0);
	global.__fNamefont = font_add_sprite_ext(sprFontNamefont, map, true, 0);
	global.__fDoslike9 = font_add_sprite_ext(sprFontDoslike9, map, true, 0);
}
