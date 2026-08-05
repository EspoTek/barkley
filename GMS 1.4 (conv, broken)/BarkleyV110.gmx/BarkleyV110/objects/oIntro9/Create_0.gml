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
