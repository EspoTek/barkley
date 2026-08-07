direction=point_direction(x,y,target.x,target.y);
if (point_distance(x,y,target.x,target.y)<=speed*2) {
if (daf=0) { daf=1; alarm[0]=30; alarm[1]=1; speed=0; }
}
if (daf=0) image_angle+=5;
