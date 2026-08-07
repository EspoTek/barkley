global.descriptor="Ghostly Curse";
global.b_obj=global.b_middle;
if (exec!=-1) { 
if (_bp<10) { event_user(floor(random(2))); exit; }
_bp-=10;
fff=1; exec=-1; stage=0; wdoing=2; walk=global.b_middle; walkdist=6; exit; 
}
if (stage=0) {
if (fff=1) sound_loop(mBLaugh0);
if (fff<65) {
if (image_xscale=-1) image_xscale=1;
else image_xscale=-1;
}
if (fff=10) { target=sEnemyTarget("random",!enemy); sBCondition("inflict","parkinsons",target); }
if (fff=20) { target=sEnemyTarget("random",!enemy); sBCondition("inflict","aspergers",target); }
if (fff=30) { target=sEnemyTarget("random",!enemy); sBCondition("inflict","diabetes",target); }
if (fff=40) { target=sEnemyTarget("random",!enemy); sBCondition("inflict","glaucoma",target); }
if (fff=50) { target=sEnemyTarget("random",!enemy); sBCondition("inflict","handicapable",target); }
if (fff=60) { target=sEnemyTarget("random",!enemy); sBCondition("inflict","montezuma",target); }
if (fff>69) { stage=1; image_xscale=1; sound_stop(mBLaugh0); }
} else if (stage=1) {
img=8;
if (fff>19) { img=1; stage=0; doing=-1; }
}
if (fff!=0) fff+=1;
