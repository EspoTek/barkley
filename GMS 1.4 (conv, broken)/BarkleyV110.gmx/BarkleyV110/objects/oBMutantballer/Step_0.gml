if (exec!=-1) { event_user(exec); exec=-1; }
if (doing!=-1) event_user(doing);
wdone=0;
if (walk!=-999) {
x+=lengthdir_x(wspd,point_direction(fx,fy,walk.fx-walkdist,walk.fy));
y+=lengthdir_y(wspd,point_direction(fx,fy,walk.fx-walkdist,walk.fy)); //*2 removed just for baller
dist=point_distance(fx,fy,walk.fx-walkdist,walk.fy);
if (dist<wspd) { wdone=1; walk=-999; }
cou+=wspd;
if (cou>5 && evolve=1) {
cou=0;
if (img=4) img=1;
else if (img=1) img=2;
else if (img=2) img=3;
else if (img=3) img=4;
} else if (evolve=0) img=7;
} else if (doing=-1) {
if (evolve=1) img=1;
else img=7;
}
/* */
/*  */
