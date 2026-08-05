// Port: Create sets alarm[10] unconditionally, and this guard only excludes
// RomSubwayBoard1 -- but oIntro25 is also placed in RomSubwayCar1, which has no
// oCyberdwarf or oBalthios either (Car0/2/3 do). Verified byte-identical in the
// GM6 original, so this is the shipped code, not an import artefact: the GM6
// build ignored "Unable to find any instance for object index" and ran on.
// Same fix as oIntro40's alarm[5] -- `with` is a no-op when the object is
// absent and hits the same single instance when it is present.
if (room != RomSubwayBoard1) {
	with (oCyberdwarf) x = -999;
	with (oBalthios)   x = -999;
}
