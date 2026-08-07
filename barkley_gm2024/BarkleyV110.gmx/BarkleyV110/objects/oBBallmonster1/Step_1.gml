image_blend=oBBallmonster.col;
image_angle+=20;
dir=point_direction(x,y,xx,yy);
spd=5;
x+=lengthdir_x(spd,dir);
y+=lengthdir_y(spd,dir);
if (point_distance(x,y,xx,yy)<=spd) {
x=xx; y=yy;
if (xx!=master.x) {
target=master.target;
with (master) sDamage(doing); 
sS(mBPunch);
xx=master.x;
yy=master.y;
} else {
instance_destroy();
master.stage=3;
master.img=8;
master.fff=1;
}
}
