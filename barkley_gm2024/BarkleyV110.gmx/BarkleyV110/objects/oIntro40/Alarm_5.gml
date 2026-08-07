// Port: oIntro40 is placed in both RomSubway1 and RomNBAJam, and its Create sets
// alarm[5] unconditionally (outside the sOvar guard -- verified byte-identical in
// the GM6 original). RomNBAJam has none of these four NPCs, so `oBalthios.x=-999`
// raises "Unable to find any instance for object index" the step after the room
// loads, killing the Chaos Dunk flashback. The shipped GM6 build ignored that
// error and carried on to the next statement -- the game leans on this hard
// (972 unguarded obj.var sites, not one instance_exists check), so it was a
// build-wide setting, not an oversight here.
// `with` reproduces it exactly: no-op when absent, same single instance when not.
with (oBalthios)   x = -999;
with (oCyberdwarf) x = -999;
with (oHoopz)      x = -999;
with (oJuwanna)    x = -999;
