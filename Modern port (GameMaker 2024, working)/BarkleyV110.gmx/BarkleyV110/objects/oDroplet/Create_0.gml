img=floor(random(2));
image_speed=0;
image_index=0;
if (point_distance(x,y,oBarkley.x,oBarkley.y)>250) { instance_destroy(); exit; }
if (place_meeting(x,y+32,oWall)) instance_destroy();
