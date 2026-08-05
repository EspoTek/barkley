//15-40
if (head=0) { event_user(1); exit; }
if (exec!=-1) { fff=0; exec=-1; walkdist=150; stage=0; wdoing=0; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=7; }
if (fff>10) { fff=1; img+=1; }
if (img=9) {
x=x-(4/2)+random(4);
y=y-(4/2)+random(4);
}
if (img=10) { stage=1; cou=0; img=10; }
} else if (stage=1) {
fff=1;
sound_play(mBallbrain1);
sBCondition("speed",-999,id);
ggg=sThrow(x,y-20,target.x,target.y,5+random(2),30);
global.b_obj=ggg;
ggg.image_index=2; ggg.image_speed=0;
ggg.target=target;
ggg.depth=target.depth-1;
stage=2;
} else if (stage=2) {
if (instance_exists(oProjectile)=0) { head=0; doing=-1; sprite_index=sBBallbrain1; img=1; }
} else if (stage=2.1) {
if (instance_exists(oProjectile)=0) { stage=1; }
}
if (fff!=0) fff+=1;
