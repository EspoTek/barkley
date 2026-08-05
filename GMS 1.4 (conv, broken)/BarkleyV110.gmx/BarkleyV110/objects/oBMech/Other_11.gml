global.descriptor="Danger Bolts";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; stage=0; doing=vet; stage=0; if (vet=2) exec=2; exit; } //change heres
if (stage=0) {
if (fff=0) { fff=1; }
x=xstart-(8/2)+random(8);
y=ystart-(8/2)+random(8);
if (fff>34) { 
stage=1; cou=0; vet=2;
target=sEnemyTarget("random",!enemy); ggg=instance_create(x-7,y+20,oBNeedler); ggg.target=target; ggg.sprite_index=sBMech0; ggg.image_index=1; ggg.image_speed=0; ggg.twist=1; ggg.master=id; ggg.speed=8;
target2=sEnemyTarget("random",!enemy); ggg=instance_create(x+7,y+20,oBNeedler); ggg.target=target2; ggg.sprite_index=sBMech0; ggg.image_index=1; ggg.image_speed=0; ggg.twist=1; ggg.master=id; ggg.speed=12;
sS(mBoltbust);
}
} else if (stage=1 && instance_number(oBNeedler)=1) {
target=target2;
} else if (stage=1 && instance_exists(oBNeedler)=0) {
doing=-1; finish=1; ended=0;
}
if (fff!=0) fff+=1;
