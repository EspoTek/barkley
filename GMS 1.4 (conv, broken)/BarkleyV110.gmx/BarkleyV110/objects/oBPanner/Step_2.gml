if (instance_exists(global.b_obj)=0) exit; //fail safe
if (global.b_obj!=-999) { xx=global.b_obj.x; yy=global.b_obj.y; }
dir=point_direction(x,y,xx,yy);
spd=min(point_distance(x,y,xx,yy),15);
x+=lengthdir_x(spd,dir);
y+=lengthdir_y(spd,dir);
if (point_distance(x,y,xx,yy)<=15) {
x=xx; y=yy;
global.b_focus=1;
global.b_fobj=global.b_obj;
} else global.b_focus=0;
