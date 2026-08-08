//Port fix, same trap as oIntro9/oIntro12. RomSewer2 places TWO complete sets
//of the cutscene cast: one at (720..752, 544..560) created 78-80, and a second
//by the Pump at (592..624, 416..432) created 84-86. oIntro15 is created 81, so
//its Create only ever reached the first set -- the second stood next to the
//Pump for the rest of the game, a fake party watching you walk past.
//Room Start runs once every instance exists, so repeat the teardown here.
//killactors is set by Create so this stays in step with the branch it took
//(the cutscene branch needs the cast alive and leaves it 0).
if (killactors=1) {
with (oCyberdwarf) instance_destroy();
with (oBalthios) instance_destroy();
with (oHoopz) instance_destroy();
}
