if (instance_exists(master)=0) { instance_destroy(); exit; }
if (cou=0) { cou=0.1; x=master.x+12; y=master.y+16; }
direction=point_direction(x,y,val0,val1);
speed=10*global.rd;
if (point_distance(x,y,val0,val1)<=speed) {
speed=0;
sprite_index=sFlameball;
phase=1;
}
if (phase=1) {
cou+=global.rd;
image_angle+=(15+random(5))*global.rd;
image_xscale+=(image_xscale/15)*global.rd;
image_yscale=image_xscale;
if (cou>15) instance_destroy();
}
