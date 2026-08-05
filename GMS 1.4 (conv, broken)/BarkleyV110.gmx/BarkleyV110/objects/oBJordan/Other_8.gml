if (doing=1) {
if (stage=0.5) {
bul=instance_create(x-20,y+15,oBShot);
sS(mBGun0);
bul.master=id;
bul.sprite_index=sBJordanGun;
bul.image_index=1; bul.image_speed=0;
bul.direction=point_direction(bul.x,bul.y,target.x,target.y);
bul.speed=9;
stage=0.6;
} else if (stage=0.6) {
fff=1;
path_end();
gun=0;
stage=1;
img=9;
}
}
