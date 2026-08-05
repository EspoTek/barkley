sPos("load");
with (oBarkley) {
if (global.victorian=0) name="Balthios";
else name="Balthane";
face=2;
}
with (oCuchWar0) instance_destroy();
with (oCuchDoor0) instance_destroy();
with (oCuchWar1) instance_destroy();
with (oCuchDoor1) instance_destroy();
sOvar(object_index,3);
sCinema(oBarkley,"cond",cine_0148);
