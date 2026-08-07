if (exec!=-1) { doing=exec; event_user(exec); exec=-1; }
wdone=0;
if (walk!=-999) {
x+=lengthdir_x(wspd,point_direction(fx,fy,walk.fx-walkdist,walk.fy));
y+=lengthdir_y(wspd*2,point_direction(fx,fy,walk.fx-walkdist,walk.fy));
dist=point_distance(fx,fy,walk.fx-walkdist,walk.fy);
if (dist<wspd) { wdone=1; walk=-999; }
}
