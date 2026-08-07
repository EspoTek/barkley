//Hurricane Shot
global.descriptor="Hurricane Shot";
if (exec!=-1) { 
if (_bp<10) { event_user(floor(random(3))); exit; }
_bp-=10; stage=0; fal=0; spin=1; fff=1; walk=global.b_middle; walkdist=5; wdoing=4; exit; 
}

if (stage=0) {
if (fal<9) {
if (fff=10) {
target=sEnemyTarget("random",0);
img=6; spin=0;
bul=instance_create(x+50,y-6,oBShot);
sS(mBGun0);
bul.master=id;
bul.sprite_index=sBJordanGun;
bul.image_index=1; bul.image_speed=0;
bul.direction=point_direction(bul.x,bul.y,target.x,target.y);
bul.speed=13;
gun=3;
}
if (fff>12) {
fff=1;
gun=0;
fal+=1; spin=1;
}
}
if (fal>8 && instance_exists(oBShot)=0) { doing=-1; stage=0; img=13; spin=0; }
}


if (fff!=0) fff+=1;
