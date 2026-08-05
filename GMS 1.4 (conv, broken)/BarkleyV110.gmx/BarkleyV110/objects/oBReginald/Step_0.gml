if (exec!=-1) { event_user(exec); exec=-1; }
if (doing!=-1) {
ended=1;
event_user(doing);
} else {
if (ended=1) { ended=0; walk=slav; wdoing=-1; walkdist=0; }
if (walk!=-999) {
x+=lengthdir_x(wspd,point_direction(fx,fy,walk.fx-walkdist,walk.fy));
y+=lengthdir_y(wspd*2,point_direction(fx,fy,walk.fx-walkdist,walk.fy));
dist=point_distance(fx,fy,walk.fx-walkdist,walk.fy);
if (dist<wspd) { if (walk=slav) { finish=1; } doing=wdoing; walk=-999; }
img=1+force;
} else img=1+force;
}
