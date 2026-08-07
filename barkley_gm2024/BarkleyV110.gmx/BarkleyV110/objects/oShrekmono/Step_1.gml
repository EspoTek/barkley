x=__view_get( e__VW.XView, 0 )+160; y=__view_get( e__VW.YView, 0 )+120;
if (kill=0) {
image_xscale+=global.rd/30;
image_yscale=image_xscale;
if (image_xscale>1) { image_xscale=1; image_yscale=1; kill=1; }
} else if (kill=1) {
if (sKey(vk_anykey)) kill=2;
} else {
image_xscale-=global.rd/30;
image_yscale=image_xscale;
if (image_xscale<0) { instance_destroy(); }
}
