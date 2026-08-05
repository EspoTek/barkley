if (prefin=-2) exit;
//
if (global.turn=id) {
if (exec!=-1) { event_user(exec); doing=exec; exec=-1; }
if (doing>=0 && doing<=9) {
event_user(doing);
} else if (attack=1) {
event_user(10); //jump
}
wdone=0;
if (walk!=-999) {
x+=lengthdir_x(wspd,point_direction(fx,fy,walk.fx+walkdist,walk.fy));
y+=lengthdir_y(wspd*2,point_direction(fx,fy,walk.fx+walkdist,walk.fy));
dist=point_distance(fx,fy,walk.fx+walkdist,walk.fy);
if (dist<=wspd) { wdone=1; walk=-999; image_speed=0.2; sprite_index=sBBarkleyStand; }
}
}
