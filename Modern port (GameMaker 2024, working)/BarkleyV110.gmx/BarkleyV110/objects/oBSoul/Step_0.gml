image_blend=c_dkgray;
image_alpha=0.5;
image_xscale-=0.01;
image_yscale-=0.01;
move_towards_point(oBGhastly.x,oBGhastly.y,5);
if (point_distance(x,y,oBGhastly.x,oBGhastly.y)<6) instance_destroy();
