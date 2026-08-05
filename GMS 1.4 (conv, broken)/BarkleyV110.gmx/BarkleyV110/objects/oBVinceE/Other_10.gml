//Laser
if (exec!=-1) { exec=-1; stage=0; doing=0; exit; }
global.b_obj=global.b_middle;
if (stage=0) {
las=instance_create(x-5,y-30,oBTarget);
las.x2=target.x;
las.y2=target.y;
las.master=id;
img=1; sprite_index=sBVinceLaser;
stage=1;
bou=45;
} else if (stage=1) {
bou-=1;
if (bou<0) {
with (oBTarget) instance_destroy();
stage=0;
doing=-1;
ended=0;
finish=1;
sprite_index=sBVinceEnemy;
}
}

