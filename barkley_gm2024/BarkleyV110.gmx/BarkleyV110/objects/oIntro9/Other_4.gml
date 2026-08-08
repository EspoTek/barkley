//Port fix: this was the Create event. It tears down whichever actors do not
//belong in Cyberdwarf's home for the current plot state, but oHoopz is placed
//AFTER oIntro9 in the room's instance creation order, so at Create time he did
//not exist yet and `with (oHoopz)` matched nothing -- leaving Hoopz standing in
//the corner of the plot-6 scene where Cyberdwarf asks "Where is Hoopz?".
//(oVince, oBalthios and oCyberdwarf are placed BEFORE oIntro9, which is why
//only Hoopz survived.) Room Start runs once every instance exists, so the
//teardown now reaches all four. Same code otherwise; oIntro9 is room-placed
//only, never instance_create'd, so Room Start always fires.
if (sOvar(object_index,-1)=1) {
instance_destroy();
with (oHoopz) instance_destroy();
with (oVince) instance_destroy();
with (oBalthios) instance_destroy();
with (oCyberdwarf) instance_destroy();
exit;
}
if (global.plot!=6 && global.plot!=8 && global.plot!=9) {
instance_destroy();
with (oHoopz) instance_destroy();
with (oVince) instance_destroy();
with (oBalthios) instance_destroy();
with (oCyberdwarf) instance_destroy();
exit;
}
if (global.plot=6) {
with (oHoopz) instance_destroy();
alarm[0]=2;
} else {
with (oVince) instance_destroy();
alarm[1]=1;
}
sA("stopall");
sA("loop",mCyberdwarf);
