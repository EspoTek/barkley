global.descriptor="Dark Vortex";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; doing=3; stage=0; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=1; }
if (fff=5) { 
sS(mBVortex); 
ggg=instance_create(x,y,oBNeedler); ggg.target=target; ggg.speed=2; ggg.twist=1; ggg.master=id; ggg.sprite_index=sBShadow1; ggg.image_index=2; ggg.image_speed=0; ggg.daf=0;
} else if (fff>5) {
if (instance_exists(oBNeedler)=0) { 
sDamage(doing);
doing=-1; img=1; ended=0; finish=1;
} else ggg.speed+=0.25;
}
}
if (fff!=0) fff+=1;


