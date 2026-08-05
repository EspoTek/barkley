if (view_current!=0) exit;
if (type="fire") {
image_angle+=30;
speed=11;
image_index=0;
global.b_shadow=id;
{ tttmp=instance_create(x,y,oBShadow); tttmp.shrink=0.1; }
sD();
}
if (type="ice") {
image_angle+=5;
image_index=1;
speed=12;
vl0+=.5;
sD();
x+=lengthdir_x(vl0,direction-90);
y+=lengthdir_y(vl0,direction-90);
sD();
x+=lengthdir_x(vl0*2,direction+90);
y+=lengthdir_y(vl0*2,direction+90);
sD();
x+=lengthdir_x(vl0,direction-90);
y+=lengthdir_y(vl0,direction-90);
}
if (type="thunder") { //no scale
speed=15;
bgg=(16+random(8))*sal;
sElectric(x,y,x+lengthdir_x(bgg,direction-90),y+lengthdir_y(bgg,direction-90),4,pr_linestrip,merge_color(c_yellow,c_white,.2+random(.3)),c_yellow,16,15,0.1);
}
if (type="time") {
speed=9;
image_index=3;
image_xscale=sal-0.4+random(0.8);
image_yscale=sal-0.4+random(0.8);
image_angle=random(360);
sD();
}
if (type="hell") {
image_angle+=20;
speed=8;
image_index=4;
global.b_shadow=id;
{ tttmp=instance_create(x,y,oBShadow); tttmp.shrink=0.1; }
sD();
}
if (type="bloody") {
image_angle=random(360);
image_index=5;
speed=9;
ox=x;
oy=y;
x+=lengthdir_x(12,dir);
y+=lengthdir_y(12,dir);
sD();
x=ox;
y=oy;
dir+=40;
}
if (type="snail") {
image_index=6;
speed=5;
image_angle+=25;
sD();
}
