if (type=0) {
image_xscale=1;
if (go=1) image_yscale=min(2,image_yscale+0.1);
if (go=2) {
image_yscale=max(0,image_yscale-0.1);
if (image_yscale=0) instance_destroy();
}
} else {
sprite_index=sCancelled;
if (go=1) {
image_xscale=min(1.5,image_xscale+0.03);
image_yscale=image_xscale;
if (image_xscale!=1.5) image_angle+=30;
else image_angle=0;
}
if (go=2) {
image_xscale=max(0,image_xscale-0.03);
image_yscale=image_xscale;
image_angle-=30;
if (image_xscale=0) instance_destroy();
}
}

