if (exec!=-1) { event_user(exec); exec=-1; }

if (spin=1) {
if (img=13) img=14;
else if (img=14) img=15;
else if (img=15) img=16;
else img=13;
}

if (doing!=-1) {
ended=1;
event_user(doing);
} else {
wdone=0;
if (ended=1) { ended=0; walk=slav; wdoing=-1; walkdist=0; }
if (walk!=-999) {
x+=lengthdir_x(wspd,point_direction(fx,fy,walk.fx-walkdist,walk.fy));
y+=lengthdir_y(wspd*2,point_direction(fx,fy,walk.fx-walkdist,walk.fy));
dist=point_distance(fx,fy,walk.fx-walkdist,walk.fy);
if (dist<wspd) { if (walk=slav) { finish=1; wspd=3; } doing=wdoing; walk=-999; wdone=1; }
cou+=wspd/6;
if (cou>3 && spin=0) { //cou>wspd 0.5
cou=0;
if (img=1) img=2;
else if (img=2) img=3;
else if (img=3) img=4;
else img=1;
}
} else img=1;
}
