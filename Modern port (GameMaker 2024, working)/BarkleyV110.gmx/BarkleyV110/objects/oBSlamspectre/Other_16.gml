//Ghast Toss
//if (exec!=-1) { fff=0; exec=-1; walkdist=6; stage=0; wdoing=0; walk=global.b_middle; exit; }
global.descriptor="Double Spirit Throw";
if (stage=0) {
if (fff=0) { fff=1; img=6; }
if (fff>5) { fff=1; img+=1; }
if (img=11) {
img=11;
ggg=sThrow(x+15,y-30,target.x,target.y,8+random(2),30);
ggg.depth=target.depth-1;
ggg.image_index=3; ggg.image_speed=0;
global.b_obj=ggg;
stage=1; cou=0;
sound_play(mBallbrain1);
fff=1;
rag=3;
doing=0;
}
} else if (stage=1) {
if (fff>14 && instance_exists(oProjectile)=0) { img=rag; doing=-1; }
}
if (fff!=0) fff+=1;
