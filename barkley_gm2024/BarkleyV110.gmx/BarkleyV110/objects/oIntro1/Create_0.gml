if (global.plot!=1) {
with (oPunk0) instance_destroy();
with (oPunk1) instance_destroy();
instance_destroy(); 
exit;
}
oBum0.movement=0; //oPump/oBarkley hidden in Room Start (created later)
global.camera=oDummy;
alarm[0]=1;
sTrans("fadeout");
