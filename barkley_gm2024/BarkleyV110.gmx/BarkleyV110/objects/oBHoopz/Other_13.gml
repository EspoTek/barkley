//Status Shot
skillusing=1;
global.b_obj=global.b_middle;
if (stage=0) {
if (cou=0) { sound_play(mBGunReload); rot=180; face=180; sface=180; cou=1; }
shoot=1;
face+=20;
if (face>sface+360) { face=180; shoot=0; reload=0; stage=1; sprite_index=sBHoopzSkill1; image_index=0; image_speed=0; }
} else if (stage=1) {
cou+=1;
if (cou>5) { cou=0; image_index+=1; image_speed=0; if (image_index>1) { stage=2; image_index=2; image_speed=0; walk=target; } }
} else if (stage=2) {
image_angle+=20;
wspd=3;
walkdist=140;
dirt=point_direction(fx,fy,walk.fx+walkdist,walk.fy);
x+=lengthdir_x(wspd,dirt);
y+=lengthdir_y(wspd*2,dirt);
dist=point_distance(fx,fy,walk.fx+walkdist,walk.fy);
if (dist<wspd) { stage=3; image_index=4; image_speed=0; image_angle=0; cou=0; }
} else if (stage=3) {
out=1;
cou+=1;
if (cou>5) { cou=0; stage=3.1; }
} else if (stage=3.1) {
dir=point_direction(x,y,target.x,target.y);
face=dir;
barrel+=10;
xx=x-30+lengthdir_x(shaft,dir-90)+lengthdir_x(barrel,dir);
yy=y-5+lengthdir_y(shaft,dir-90)+lengthdir_y(barrel,dir);
barrel-=10;
sound_play(asset_get_index("mBGun"+string(imgz)));
bul=instance_create(xx,yy,oBBullet);
dir=point_direction(xx,yy,target.x,target.y);
bul.type=3;
bul.speed=4;
bul.direction=dir;
bul.img=8;
rot-=20+random(5);
stage=8; //4;
} else if (stage=8) {
image_index=2; image_speed=0;
image_xscale=-1;
out=0;
walk=slav;
image_angle-=20;
wspd=3;
walkdist=0;
dirt=point_direction(fx,fy,walk.fx+walkdist,walk.fy);
x+=lengthdir_x(wspd,dirt);
y+=lengthdir_y(wspd*2,dirt);
dist=point_distance(fx,fy,walk.fx+walkdist,walk.fy);
if (dist<wspd) { stage=9; cou=0; image_index=1; image_speed=0; image_angle=0; }
} else if (stage=9) {
cou+=1;
if (cou>5) { cou=0; image_index-=1; image_speed=0; if (image_index<0) { mov=-999; image_xscale=1; alarm[5]=1; } }
}
