if (go=1) {
if (point_distance(x,y,follow.x,follow.y)<spd*global.rd) {
x=follow.x;
y=follow.y;
go=0;
} else {
fff=point_direction(x,y,follow.x,follow.y);
x+=lengthdir_x(spd*global.rd,fff);
y+=lengthdir_y(spd*global.rd,fff);
}
}
