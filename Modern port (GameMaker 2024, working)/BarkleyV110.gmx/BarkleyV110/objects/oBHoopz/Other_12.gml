//Gun's Slay
skillusing=1;
global.b_obj=global.b_middle;
if (stage=0) {
out=1;
sprite_index=sBHoopzSkill0;
walk=target;
wspd=2;
scj=0;
walkdist=80;
dirt=point_direction(fx,fy,walk.fx+walkdist,walk.fy);
x+=lengthdir_x(wspd,dirt);
y+=lengthdir_y(wspd*2,dirt);
dist=point_distance(fx,fy,walk.fx+walkdist,walk.fy);
cou+=1;
if (cou>30) { stage=1; cou=0; }
} else if (stage=1) {
walk=slav;
wspd=2;
walkdist=80;
dirt=point_direction(fx,fy,walk.fx+walkdist,walk.fy);
x+=lengthdir_x(wspd,dirt);
y+=lengthdir_y(wspd*2,dirt);
dist=point_distance(fx,fy,walk.fx+walkdist,walk.fy);
cou+=1;
if (cou>30) { stage=2; cou=0; out=2; }
} else if (stage=2) {
if (instance_exists(oBReticule)=0) { mov=-999; alarm[5]=1; }
}

if (out!=0) {
xo=-26;
yo=-20+random(30);
}
if (out=1) {
bou+=1;
if (bou>6) {
bou=0;
dir=point_direction(x,y,target.x,target.y);
face=dir;
stray=2;
xx=x+lengthdir_x(shaft,dir-90)+lengthdir_x(barrel,dir);
yy=y+lengthdir_y(shaft,dir-90)+lengthdir_y(barrel,dir);
sound_play(asset_get_index("mBGun"+string(imgz)));
bul=instance_create(xx,yy,oBBullet);
bul.type=1;
bul.speed=15+random(5);
bul.direction=dir-(stray/2)+random(stray);
bul.img=imgz;
rot-=20+random(5);
}
}

