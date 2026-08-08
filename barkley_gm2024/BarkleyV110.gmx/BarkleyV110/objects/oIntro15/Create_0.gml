//gateway cinema
//killactors: the cast teardown repeats in Room Start, where the second set of
//actors placed after this object is finally reachable. See Other_4.
killactors=0;
if (sOvar(oSuitToll,-1)=1 && sOvar(oEvent13b,-1)=1) {
if (sOvar(object_index,-1)=-1) alarm[0]=1;
else {
killactors=1;
with (oCyberdwarf) instance_destroy();with (oBalthios) instance_destroy();with (oHoopz) instance_destroy();
}
sOvar(object_index,1);
//cinema
} else {
killactors=1;
with (oCyberdwarf) instance_destroy();with (oBalthios) instance_destroy();with (oHoopz) instance_destroy();
exit;
}
