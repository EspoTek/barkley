//Gun Shot
global.descriptor="Gun Shot";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; walkdist=-50; stage=0; wdoing=0; walk=slav; exit; }
if (stage=0) {
img=5;
gun=1;
stage=1;
fff=1;
} else if (stage=1 && fff>14) {
bul=instance_create(x+45,y-23,oBShot);
sS(mBGun0);
bul.master=id;
bul.sprite_index=sBJordanGun;
bul.image_index=1; bul.image_speed=0;
bul.direction=point_direction(bul.x,bul.y,target.x,target.y);
bul.speed=13;
gun=1;
stage=2;
fff=1;
} else if (stage=2) {
if (instance_exists(oBShot)=0) { doing=-1; img=1; gun=0; }
}
if (fff!=0) fff+=1;
