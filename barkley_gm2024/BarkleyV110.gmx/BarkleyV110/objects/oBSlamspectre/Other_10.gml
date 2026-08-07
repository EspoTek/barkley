//Ghast Toss
global.descriptor="Ghast Toss";
if (exec!=-1) { 
if (rag=3) { event_user(exec+2); exit; }
fff=0; exec=-1; walkdist=7; stage=0; if (rag=1) wdoing=0; else wdoing=6; walk=global.b_middle; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=4; }
if (fff>5) { fff=1; img+=1; }
if (img=6) {
img=6;
ggg=sThrow(x+15,y-30,target.x,target.y,8+random(2),30);
ggg.depth=target.depth-1;
ggg.image_index=3; ggg.image_speed=0;
global.b_obj=ggg;
stage=1; cou=0;
sound_play(mBallbrain1);
fff=1;
rag=2;
}
} else if (stage=1) {
if (fff>14 && instance_exists(oProjectile)=0) { img=rag; doing=-1; }
} else if (stage=2) {
if (fff>45) { doing=-1; sprite_index=sBBallbrain1; img=1; }
}
if (fff!=0) fff+=1;
