if (exec!=-1) { event_user(exec); exec=-1; }

if (ecto!=-1) {
ecto+=1;
if (ecto>3) {
ecto=0;
olk=instance_create(fx,fy,oBDummy);
olk.visible=1; olk.sprite_index=sBGhostdad0; olk.image_index=0; olk.image_speed=0;
sound_play(mBSnail0); olk.alarm[11]=40;
}
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
if (dist<wspd) { if (walk=slav) { finish=1; wspd=6; } doing=wdoing; walk=-999; wdone=1; }

cou+=.7;
if (cou>1.9) {
cou=0;
if (img=1) img=2;
else img=1;
}

} else { if (smile=0) img=1; else img=4; }
}
