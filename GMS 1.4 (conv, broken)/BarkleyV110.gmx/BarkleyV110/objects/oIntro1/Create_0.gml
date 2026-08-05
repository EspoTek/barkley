if (global.plot!=1) {
with (oPunk0) instance_destroy();
with (oPunk1) instance_destroy();
instance_destroy(); 
exit;
}
oPump.visible=0;
oBum0.movement=0;
oBarkley.visible=0;
global.camera=oDummy;
alarm[0]=1;
sTrans("fadeout");
