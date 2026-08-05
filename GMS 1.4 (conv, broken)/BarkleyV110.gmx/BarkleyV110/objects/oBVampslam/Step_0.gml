if (mode=0) {
spd=min(spd+1,14);
move_towards_point(target.x,target.y,spd);
if (point_distance(x,y,target.x,target.y)<15) instance_destroy();
}
if (mode=1) {
if (spd=0) direction=90-45+random(90);
spd=min(spd+1,14);
speed=spd;
if (spd=14) instance_destroy();
}
