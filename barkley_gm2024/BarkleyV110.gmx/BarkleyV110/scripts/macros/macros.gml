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

// Port: GM6 spaced lines by the typeface's GDI text height -- 16px for
// MingLiU 12 -- and let the few glyphs whose ink is taller than that (the
// descenders, the brackets, the underscore in "~-_LIKE THIS_-~") hang into the
// line below.  A sprite font cannot express that: it spaces rows by the frame
// height, which is the tallest glyph, so CreditsText came out at 18px per line.
// Over the 166 lines of the credit roll that is 330px of drift (2988 vs 2658),
// enough to leave its tail parked on the end card.  nametext and sCredits
// both pass this to the _ext text calls so the roll measures and draws at the
// original spacing.
#macro CreditsLineSep 16

}
