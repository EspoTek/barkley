if (exec!=-1) { event_user(exec); exec=-1; }
if (doing!=-1) event_user(doing);
wdone=0;
if (ended=1) { ended=0; walk=slav; wdoing=-1; walkdist=0; }
if (walk!=-999) {
x+=lengthdir_x(wspd,point_direction(fx,fy,walk.fx-walkdist,walk.fy));
y+=lengthdir_y(wspd*2,point_direction(fx,fy,walk.fx-walkdist,walk.fy));
dist=point_distance(fx,fy,walk.fx-walkdist,walk.fy);
if (dist<wspd) { wdone=1; walk=-999; }
cou+=1;
if (cou>2) {
cou=0;
if (img=4) img=2;
else if (img=2) img=3;
else if (img=3) img=4;
}
} else if (doing!=2) img=1;
