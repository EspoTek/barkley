if (kill=0) {
image_xscale+=global.rd/30;
image_yscale=image_xscale;
if (image_xscale>2) { image_xscale=2; image_yscale=2; kill=1; }
} else if (kill=1) {
if (cou=0) sound_play(mDuergar);
cou+=global.rd;
if (cou>30) { global.shake=0; kill=2; }
} else {
image_xscale-=global.rd/30;
image_yscale=image_xscale;
if (image_xscale<0) { instance_destroy(); }
}
x=__view_get( e__VW.XView, 0 )+160-((sprite_width*image_xscale)/2); y=__view_get( e__VW.YView, 0 )+120-((sprite_height*image_yscale)/2);
