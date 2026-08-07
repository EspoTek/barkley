global.descriptor="Circular Saw Rage";
if (exec!=-1) { 
img=2; fff=0; exec=-1; walkdist=10; stage=0.1; doing=1; 
rig=instance_create(target.fx+16,target.fy,oBDummy);
lef=instance_create(target.fx-16,target.fy,oBDummy);
bot=instance_create(target.fx,target.fy-16,oBDummy);
top=instance_create(target.fx,target.fy+16,oBDummy);
walk=rig;
exit; }
if (stage=0.1) {
if (wdone=1) { wdone=0; stage=0.2; fof=0; walk=top; sound_play(mDreadref0); sDamage(doing); }
} else if (stage=0.2) {
if (wdone=1) { wdone=0; stage=0.3; fof=0; walk=lef; }
} else if (stage=0.3) {
if (wdone=1) { wdone=0; stage=0.4; fof=0; walk=bot; sDamage(doing); }
} else if (stage=0.4) {
if (wdone=1) { wdone=0; stage=0.5; fof=0; walk=rig; }
} else if (stage=0.5) {
if (wdone=1) { wdone=0; stage=0.6; fof=0; walk=top; sDamage(doing); }
} else if (stage=0.6) {
if (wdone=1) { wdone=0; stage=0.7; fof=0; walk=lef; }
} else if (stage=0.7) {
if (wdone=1) { wdone=0; stage=0.8; fof=0; walk=bot; sDamage(doing); }
} else if (stage=0.8) {
if (wdone=1) { wdone=0; stage=0.9; fof=0; walk=rig; }
} else if (stage=0.9) {
if (wdone=1) { wdone=0; stage=4; fof=0; walk=top; sDamage(doing); }
} else if (stage=4) {
if (wdone=1) { wdone=0; stage=5; fof=0; walk=slav; image_xscale=-1; }
} else if (stage=5) {
if (wdone=1) { 
with (bot) instance_destroy();
with (top) instance_destroy();
with (rig) instance_destroy();
with (lef) instance_destroy();
finish=1;
image_xscale=1; wdone=0; stage=0; fof=0; walk=slav; doing=-1; x=slav.x-footx; y=slav.y-footy; 
}
}
