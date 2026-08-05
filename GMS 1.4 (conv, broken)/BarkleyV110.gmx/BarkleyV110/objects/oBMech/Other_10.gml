global.descriptor="Defective Cog";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; stage=0; doing=vet; stage=0; if (vet=2) exec=2; exit; } //change heres
if (stage=0) {
if (fff=0) { fff=1; }
x=xstart-(8/2)+random(8);
y=ystart-(8/2)+random(8);
if (fff>34) { 
stage=1; cou=0; vet=1;
target=sEnemyTarget("random",!enemy); ggg=instance_create(x+7,y-20,oBNeedler); ggg.target=target; ggg.sprite_index=sBMech0; ggg.image_index=0; ggg.image_speed=0; ggg.twist=1; ggg.master=id;
sS(mCogbust);
}
} else if (stage=1 && instance_exists(oBNeedler)=0) {
doing=-1; finish=1; ended=0;
}
if (fff!=0) fff+=1;
