//Laser
global.b_obj=global.b_middle;
if (stage=1) {
bou-=1;
if (bou<0) {
with (oBTarget) instance_destroy();
alarm[5]=1;
stage=0;
prefin=-2;
sprite_index=sBVinceStand;
exit;
}
}
if (sKey(global.key_action,1)) {
if (stage=0) {
oBattleMenu.state="postshow";
sMoveSet(10,1,0.1,1,"enemy",200);
las=instance_create(x+5,y-30,oBTarget);
las.x2=target.x;
las.y2=target.y;
las.master=id;
global.b_obj=global.b_middle;
image_speed=0; image_index=1; sprite_index=sBVinceLaser;
stage=1;
bou=90;
}
}
