//gateway cinema
if (sOvar(oSuitToll,-1)=1 && sOvar(oEvent13b,-1)=1) {
if (sOvar(object_index,-1)=-1) alarm[0]=1;
else {
with (oCyberdwarf) instance_destroy();with (oBalthios) instance_destroy();with (oHoopz) instance_destroy();
}
sOvar(object_index,1);
//cinema
} else {
with (oCyberdwarf) instance_destroy();with (oBalthios) instance_destroy();with (oHoopz) instance_destroy();
exit;
}
