function macros() {
#macro gxx 0
#macro gyy 0

// Port: these five were GM6 font resources built from typefaces we can't
// reproduce (GZFruit, MingLiU, GDI-hinted Arial).  They are now sprite fonts
// made from the original shipped glyph bitmaps -- see scripts/sFontInit.
// Keeping the old names as macros means no draw_set_font()/sFont() call site
// had to change.
#macro Courier8 global.__fCourier8
#macro Arial8 global.__fArial8
#macro CreditsText global.__fCreditsText
#macro Namefont global.__fNamefont
#macro Doslike9 global.__fDoslike9

}
