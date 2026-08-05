direction=point_direction(x,y,target.x,target.y)+dir;
image_alpha=min(1,point_distance(x,0,target.x,0)/100);
if (image_alpha<0.1) instance_destroy();
