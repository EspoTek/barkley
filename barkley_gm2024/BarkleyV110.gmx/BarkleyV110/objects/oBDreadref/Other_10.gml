global.descriptor="Knife Boot Face Gash";
if (exec!=-1) { 
img=2; fff=0; exec=-1; walkdist=25; stage=0.1; doing=0; 
lef=instance_create(target.fx-16,target.fy,oBDummy);
walk=lef;
exit; }
if (stage=0.1) {
if (wdone=1) { wdone=0; stage=0.2; fff=0; fof=0; fef=0; sound_play(mDreadref1); }
} else if (stage=0.2) {
if (fff<55) fof+=1;
else fof-=0.9;
image_angle+=10+fof;
fff+=1;
fef+=fof/20;
if (fef>20) { sDamage(doing); fef=0; }
if (fff>120) { stage=0.3; image_angle=0; walk=slav; walkdist=5; image_xscale=-1; img=2; }
} else if (stage=0.3) {
if (wdone=1) { 
finish=1; wdone=0; stage=0; doing=-1; image_xscale=1; with (lef) instance_destroy();
x=slav.x-footx; y=slav.y-footy; 
}
}
