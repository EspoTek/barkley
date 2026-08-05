if (type=-1) {
speed=abs(bpd-((bpd/start)*point_distance(x,y,target.x,target.y)))+3;
if (x<target.x-200) instance_destroy();
} else {
speed=5;
}
