if (point_distance(dx,dy,x,y)<=spd*global.rd) {
x=dx;
y=dy;
dx=x;
dy=y;
} else {
dir=point_direction(x,y,dx,dy);
x+=lengthdir_x(spd*global.rd,dir);
y+=lengthdir_y(spd*global.rd,dir);
}

