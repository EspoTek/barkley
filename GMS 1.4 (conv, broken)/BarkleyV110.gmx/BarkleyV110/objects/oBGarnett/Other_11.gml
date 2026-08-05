global.descriptor="3-Pointer";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; walkdist=6; stage=0; doing=1; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=0; }
if (fff=15) { img=2; }
if (fff=18) { img=3; ggg=sThrow(x+10,y-50,target.x,target.y,4+random(3),60); ggg.image_index=5; ggg.image_speed=0; ggg.target=target; }
if (fff=21) { img=2; }
if (fff=24) { img=1; }
if (fff>74 && instance_exists(oProjectile)=0) { doing=-1; img=1; ended=0; finish=1; }
}
if (fff!=0) fff+=1;
