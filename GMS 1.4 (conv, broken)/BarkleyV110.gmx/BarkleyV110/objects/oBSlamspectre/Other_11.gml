//Double Spirit Throw
global.descriptor="Double Spirit Throw";
if (exec!=-1) { 
if (rag=2) { event_user(0); exit; }
if (rag=3) { event_user(exec+2); exit; }
fff=0; exec=-1; walkdist=7; stage=0; wdoing=1; walk=global.b_middle; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=4; }
if (fff>5) { fff=1; img+=1; }
if (img=6) {
img=11;
ggg=sThrow(x+15,y-30,target.x,target.y,4+random(1),30);
ggg.depth=target.depth-1;
ggg.image_index=3; ggg.image_speed=0;
global.b_obj=ggg;
ggg=sThrow(x+25,y-22,target.x,target.y,9+random(2),30);
ggg.depth=target.depth-1;
ggg.image_index=3; ggg.image_speed=0;
stage=1; cou=0;
sound_play(mBallbrain1);
fff=1;
}
} else if (stage=1) {
if (fff>14 && instance_exists(oProjectile)=0) { rag=3; img=3; doing=-1; }
} else if (stage=2) {
if (fff>45) { doing=-1; sprite_index=sBBallbrain1; img=1; }
}
if (fff!=0) fff+=1;
