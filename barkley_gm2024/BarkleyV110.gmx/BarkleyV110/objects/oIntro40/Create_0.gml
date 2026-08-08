//Subway Hoopz flashback cinema
if (sOvar(oLiberty,-1)=1) {
//The oExit275 -> oEventL7 swap here never runs: both exits are created after
//oIntro40 in RomSubway1, so `with (oExit275)` matches nothing. Left as shipped
//ON PURPOSE. Moving it to Room Start does make it fire, but oController's Room
//Start positions Barkley via `global.posser.x` -- global.posser IS the oExit275
//object index -- and GameMaker does not define which Room Start runs first, so
//destroying the exits there can hard-crash arrival from Liberty Island. The
//flashback gate has been absent since 2008; a nondeterministic crash would be
//worse than the missing trigger. Restore only with a safer trigger point.

if (sOvar(object_index,-1)=-1) alarm[0]=2;
if (sOvar(object_index,-1)=1) alarm[1]=2;
if (sOvar(object_index,-1)=2) alarm[2]=2;
}
alarm[5]=1;
