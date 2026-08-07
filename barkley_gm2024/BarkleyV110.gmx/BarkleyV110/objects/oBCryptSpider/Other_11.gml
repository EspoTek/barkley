global.descriptor="Web of Deception";
if (exec!=-1) { fff=0; exec=-1; walkdist=150; stage=0; wdoing=1; walk=target; exit; }
if (stage=0) {
global.b_obj=global.b_middle;
if (fff=0) { fff=1; img=3; sound_loop(mBSnail0); }
if (fff=5) web=1;
if (fff=15) { sDamage(doing); sound_play(mKillcut); target=sEnemyTarget("random",!enemy); }
if (fff=29) { sDamage(doing); sound_stop(mBSnail0); sound_play(mKillcut); web=0; }
if (fff>34) { doing=-1; img=0; web=0; }
}
if (fff!=0) fff+=1;
