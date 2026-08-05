//Dwarf Knowledge - +3, +28
if (stage=0) {
if (target!=id) {
walk=target;
walkdist=-90;
} else {
walk=slav;
walkdist=-45;
}
sprite_index=sBCyberWalk;
image_speed=0.3;
stage=1;
} else if (stage=1) {
if (wdone=1) { stage=2; coi=0; coh=0; sprite_index=sBCyberSkill3; image_index=0; image_speed=0; if (target!=id) image_xscale=-1; }
} else if (stage=2) {
coh+=1;
if (coh>5) { sS(mHeal1); stage=3; coh=0; image_index=1; fol=instance_create(x+10,y-20,oBGlyph); fol.image_index=1; fol.image_speed=0; }
} else if (stage=3) {
if (instance_exists(oBGlyph)=0) stage=200;
} else if (stage=200) {
image_xscale=-1;
walk=slav;
walkdist=7;
sprite_index=sBCyberWalk;
image_speed=0.3;
stage=201;
} else if (stage=201 && wdone=1) {
alarm[5]=5;
doing=-1;
image_xscale=1;
}

