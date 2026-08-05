depth=target.depth-1;
if (stage=0) {
direction=point_direction(x,y,target.x,target.y);
if (point_distance(x,y,target.x,target.y)<=speed*4) { speed=0; stage=1; }
} else if (stage=1) {
image_angle-=5;
if (image_angle<-44) { stage=2; sS(mBHeadbutt); with (oBGhastly) { sDamage(3); } }
} else if (stage=2) {
image_angle+=5;
if (image_angle>=0) { stage=3; }
} else if (stage=3) {
direction=point_direction(x,y,oBGhastly.x,oBGhastly.y);
speed=8;
if (point_distance(x,y,oBGhastly.x,oBGhastly.y)<=speed*2) { instance_destroy(); speed=0; stage=1; oBGhastly.img=1; }
}
