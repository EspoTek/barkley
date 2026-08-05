with (master) {
if (stage=2) path_end();
if (stage=3.001) {
with (ddd) { air=0; sprite_index=sBBarkleyStand; image_index=0; image_xscale=-1; }
stage=6;
}
if (stage=3.002) {
with (ddd) { air=0; instance_destroy(); }
stage=100;
}
}
