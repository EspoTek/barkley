//Dwarf Caress
global.b_obj=global.b_middle;
target=global.b_middle;
if (stage=0) {
walk=target;
walkdist=7;
sprite_index=sBCyberWalk;
image_speed=0.3;
stage=1;
} else if (stage=1) {
if (wdone=1) { stage=2; coi=0; coh=0; sprite_index=sBCyberSkill5; image_index=0; image_speed=0; image_xscale=-1; }
} else if (stage=2) {
coh+=1;
if (coh>5) { stage=3; coh=0; image_index=1; sS(mHeal2);
with (oBattler) {
if (enemy=0 && _vp>0) {
global.trmp=id;
with (oBCyberdwarf) { target=global.trmp; fol=instance_create(x+10,y-20,oBGlyph); fol.image_index=2; fol.image_speed=0; }
}
}
}
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
