//Bulletdance
skillusing=1;
global.b_obj=global.b_middle;
if (stage=0) {
walkdist=0;
walk=global.b_middle;
dirt=point_direction(fx,fy,walk.fx+walkdist,walk.fy);
x+=lengthdir_x(wspd,dirt);
y+=lengthdir_y(wspd*2,dirt);
dist=point_distance(fx,fy,walk.fx+walkdist,walk.fy);
if (dist<wspd) { stage=1; image_index=0; image_speed=0; sprite_index=sBHoopzSkill2; }
} else if (stage=1) {
cou+=1;
if (cou>4) { cou=0; image_index+=1; image_speed=0; if (image_index>2) { stage=2; } img=image_index; }
} else if (stage=2) {
cou+=1;
//if (img=6 && cou=4) sound_play(mBGun2);
if (cou>1) {
cou=0;
if (img=6) { target=sEnemyTarget("random",1); out=1; img=3; dir=point_direction(x+xo,y+yo,target.x,target.y); face=dir; rot=face; }
else if (img=3) { img=4; out=0; }
else if (img=4) { target=sEnemyTarget("random",1); out=1; img=3; dir=point_direction(x+xo,y+yo,target.x,target.y); face=dir; rot=face; img=5; }
else if (img=5) { out=0; img=6; }
bou+=1;
}
image_index=img; image_speed=0;
if (bou>40) { stage=3; cou=0; bou=0; }
} else if (stage=3) {
cou+=1;
if (cou>4) { cou=0; image_index+=1; image_speed=0; if (image_index>9) { image_index=-1; image_index=-1; image_speed=0; stage=4; walk=slav; image_xscale=-1; sprite_index=sBHoopzWalk; image_speed=0.25; } }
} else if (stage=4) {
walkdist=0;
dirt=point_direction(fx,fy,walk.fx+walkdist,walk.fy);
x+=lengthdir_x(wspd,dirt);
y+=lengthdir_y(wspd*2,dirt);
dist=point_distance(fx,fy,walk.fx+walkdist,walk.fy);
if (dist<wspd) { mov=-999; alarm[5]=1; }
}

/////////////////////////////////////shoot
if (out=1) {
sound_play(asset_get_index("mBGun"+string(imgz)));
out=2;
dir=point_direction(x+xo,y+yo,target.x,target.y); face=dir; rot=face;
xx=x+xo+lengthdir_x(shaft,dir-90)+lengthdir_x(barrel,dir);
yy=y+yo+lengthdir_y(shaft,dir-90)+lengthdir_y(barrel,dir);
bul=instance_create(xx,yy,oBBullet);
bul.type=0;
bul.speed=10+random(5);
bul.direction=dir-3+random(6);
bul.img=imgz;
rot-=20+random(5);
}
