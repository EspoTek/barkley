direction=point_direction(x,y,target.x,target.y);
if (point_distance(x,y,target.x,target.y)<=speed*2) {
if (daf=0) { daf=1; alarm[0]=1; target=master; with (master) { sDamage(doing); } sS(mBPunch); }
else if (daf=1) { instance_destroy(); master.stage=2; }
}
//if (daf=0) 
image_angle+=5;
