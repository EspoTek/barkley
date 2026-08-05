//Tricky Gun's Assault
skillusing=1;
if (stage>0 && stage<9) depth=target.depth-1;
if (stage=0) {
scj=0;
sprite_index=sBHoopzRun;
walk=target;
wspd=7;
walkdist=80;
dirt=point_direction(fx,fy,walk.fx+walkdist,walk.fy);
x+=lengthdir_x(wspd,dirt);
y+=lengthdir_y(wspd*2,dirt);
dist=point_distance(fx,fy,walk.fx+walkdist,walk.fy);
if (dist<wspd) { stage=1; image_index=0; image_speed=0; sprite_index=sBHoopzSkill3; }
} else if (stage=1) {
cou+=1;
if (cou>3) { cou=0; image_index+=1; image_speed=0; if (image_index>1) { stage=2; image_index=1; image_speed=0; } }
} else if (stage=2) {
image_angle+=3*3;
y-=2*3;
if (image_angle>80) { stage=3; global.b_shadow=id; }
} else if (stage=3) {
if (cou=1) instance_create(x,y,oBShadow);
if (cou=0) { cou=1; path_start(pHoopz0,9,0,0); image_index=2; image_speed=0; scj=0; }
out=1;
image_angle=point_direction(x,y,target.x,target.y);
face=image_angle;
} else if (stage=4) { //shoot after first land
out=0;
image_angle=0;
image_index=0; image_speed=0;
cou+=1; //was 7 below
if (cou>9) { cou=0; stage=5; image_index=3; image_speed=0; out=2; sound_play(mBGunCharge); scj=0; }
} else if (stage=6) {
image_index=0; image_speed=0;
cou+=1;
if (cou>1) { stage=7; cou=0; image_index=1; image_speed=0; } //7
} else if (stage=7) {
image_angle-=3*3;
y-=2*3;
if (image_angle<-80) { stage=8; }
} else if (stage=8) {
if (cou=1) instance_create(x,y,oBShadow);
if (cou=0) { cou=1; path_start(pHoopz1,9,0,0); image_index=2; image_speed=0; scj=0; }
out=1;
image_angle=point_direction(x,y,target.x,target.y);
face=image_angle;
} else if (stage=9) { //ending deal
out=0;
image_angle=0;
image_index=0; image_speed=0;
image_xscale=-1;
cou+=1;
if (cou>9) { cou=0; stage=10; image_index=3; image_speed=0; out=2; sound_play(mBGunCharge); scj=0; }
} else if (stage=11) {
image_index=0; image_speed=0;
image_xscale=1;
cou+=1;
if (cou>1) { stage=12; cou=0; image_index=1; image_speed=0; walk=slav; sprite_index=sBHoopzRun; image_xscale=-1; image_speed=0.25; }
} else if (stage=12) {
walkdist=0;
dirt=point_direction(fx,fy,walk.fx+walkdist,walk.fy);
x+=lengthdir_x(wspd,dirt);
y+=lengthdir_y(wspd*2,dirt);
dist=point_distance(fx,fy,walk.fx+walkdist,walk.fy);
if (dist<wspd) { mov=-999; alarm[5]=1; }
}


/////Automated
if (out=1) {
scj+=1;
if (scj>6) {
scj=0;
dir=point_direction(x,y,target.x,target.y);
xx=x+lengthdir_x(43,dir+10)//+lengthdir_x(barrel,dir);
yy=y+lengthdir_y(43,dir+10)//+lengthdir_y(barrel,dir);
sound_play(asset_get_index("mBGun"+string(imgz)));
bul=instance_create(xx,yy,oBBullet);
bul.type=0;
bul.speed=5+random(2.5);
bul.direction=dir-3+random(6);
bul.img=imgz;
rot-=20+random(5);
}
}

if (out=2) {
scj+=1;
if (scj>12) {

charge=0;
dir=point_direction(x,y,target.x,target.y);
face=dir;
xx=x+11+lengthdir_x(shaft,dir-90)+lengthdir_x(barrel,dir);
yy=y-16+lengthdir_y(shaft,dir-90)+lengthdir_y(barrel,dir);
sound_play(asset_get_index("mBGun"+string(imgz)));
bul=instance_create(xx,yy,oBBullet);
bul.type=2;
bul.speed=10+random(5);
bul.direction=dir-3+random(6);
bul.img=imgz;
vil=2.5;
bul.image_xscale=vil;
bul.image_yscale=vil;
rot-=35+(vil*60)+random(20);
alarm[1]=15;
out=2.1;

}
}
