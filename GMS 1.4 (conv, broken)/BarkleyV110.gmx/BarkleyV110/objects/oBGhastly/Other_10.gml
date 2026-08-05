global.descriptor="Mystic Eye Beam of Doom";
if (exec!=-1) { exec=-1; stage=0; doing=0; fff=0; exit; }
global.b_obj=global.b_middle;
if (stage=0) {
las=instance_create(x-10,y-32,oBTargetD);
las.x2=target.x;
las.y2=target.y;
las.master=id;
target=sEnemyTarget("random",0);
las=instance_create(x+10,y-31,oBTargetD);
las.x2=target.x;
las.y2=target.y;
las.master=id;
img=4;
stage=1;
fff=1;
bou=60;
} else if (stage=1) {
if (fff>9) { 
fff=1;
with (oBTargetD) { target=sEnemyTarget("random",0); x2=target.x; y2=target.y; }
}
bou-=1;
if (bou<0) {
//with (oBTarget) instance_destroy();
with (oBTargetD) instance_destroy();
stage=0;
img=1;
doing=-1;
ended=0;
finish=1;
}
}
if (fff!=0) fff+=1;
