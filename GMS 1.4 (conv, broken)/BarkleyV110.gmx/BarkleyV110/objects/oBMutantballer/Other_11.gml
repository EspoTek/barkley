//Lightning Fists
if (evolve=0) { event_user(10); exit; }
global.descriptor="Demi-Lightning Fists";
if (exec!=-1) { fff=0; exec=-1; walkdist=35; stage=0.5; doing=1; walk=target; exit; }
if (stage=0.5) {
if (wdone=1) { wdone=0; stage=0; img=1; vmg=1; fof=0; }
} else if (stage=0) {
if (fff>3) {
fff=1;
fof+=1;
if (vmg=6) vmg=1;
else if (vmg=1) { vmg=5; sDamage(doing); sound_play(mMutantballer0); }
else if (vmg=5) vmg=1.1;
else if (vmg=1.1) { vmg=6; sDamage(doing); sound_play(mMutantballer0); }
img=vmg;
}
depth=target.depth-1;
if (fff=0) { fff=1; }
if (fof>14) { stage=1; img=1; }
} else if (stage=1) {
walk=slav;
walkdist=9;
if (wdone=1) { doing=-1; wdone=0; finish=1; }
}
if (fff!=0) fff+=1;
