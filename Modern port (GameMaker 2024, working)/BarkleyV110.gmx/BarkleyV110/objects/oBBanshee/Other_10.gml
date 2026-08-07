global.descriptor="Wail";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; wdoing=0; stage=0; walkdist=20; walk=global.b_middle; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=4; }
if (img=4) { x=x-(2/2)+random(2); y=y-(2/2)+random(2); }
if (fff=20) { img=5; sS(mBWail); ggg=instance_create(x,y,oBNeedler); ggg.target=target; ggg.master=id; ggg.depth=-1000; ggg.sprite_index=sBWail; ggg.image_index=1; ggg.image_speed=0; ggg.speed=5; }
if (fff>20 && instance_exists(oBNeedler)=1) { ggg.image_xscale+=.1; ggg.image_yscale+=.1; ggg.image_angle=0; }
if (fff>20 && instance_exists(oBNeedler)=0) { sS(mMutantballer1); doing=-1; }
}
if (fff!=0) fff+=1;

