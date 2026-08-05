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
if (dist<wspd) { if (walk=slav) { finish=1; image_xscale=1; } doing=wdoing; walk=-999; }
cou+=0.5;
if (cou>2) {
cou=0;
if (img=6) img=4;
else if (img=4) img=5;
else img=6;
}
} else img=1;
}
