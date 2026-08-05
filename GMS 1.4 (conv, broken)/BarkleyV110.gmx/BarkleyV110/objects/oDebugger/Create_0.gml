if (global.b_debug=0) {
instance_destroy();
exit;
}
if (room!=RomInter) {
global.b_middle=instance_create(320/2,240/2,oBDummy);
global.b_middle.x=288
global.b_middle.y=112
alarm[0]=1;
}
timer=0;
global.b_acc="";
