//Spit On You Face
global.descriptor="Spit On You Face";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; walkdist=100; stage=0; wdoing=0; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=6; }
if (fff>3) { fff=1; img+=1; if (img>8) { img=9; stage=1; cou=0; } }
} else if (stage=1) {
fff=1;
sound_play(mBallbrain1);
//sBCondition('speed',-999,id);
ggg=sThrow(x,y-20,target.x,target.y,8+random(2),30);
global.b_obj=ggg;
ggg.image_index=4; ggg.image_speed=0;
ggg.target=target;
ggg.depth=target.depth-1;
stage=2;
cov=0;
} else if (stage=2) {
if (instance_exists(oProjectile)=0) { head=0; doing=-1; img=1; }
} else if (stage=2.1) {
if (instance_exists(oProjectile)=0) { stage=1; }
}
if (fff!=0) fff+=1;
global.b_obj=global.b_middle;
