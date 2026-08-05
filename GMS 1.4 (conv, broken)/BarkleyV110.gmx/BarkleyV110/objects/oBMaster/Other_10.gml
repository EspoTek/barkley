global.descriptor="Dual Wield";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; wdoing=0; stage=0; walkdist=40; walk=global.b_middle; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=4; }
if (fff=5) { sS(mBGun0); target=sEnemyTarget("random",!enemy); sDamage(doing); }
if (fff=10) { sS(mBGun0); target=sEnemyTarget("random",!enemy); sDamage(doing); }
if (fff=15) { sS(mBGun0); target=sEnemyTarget("random",!enemy); sDamage(doing); }
if (fff=20) { sS(mBGun0); target=sEnemyTarget("random",!enemy); sDamage(doing); }
if (fff=25) { sS(mBGun0); target=sEnemyTarget("random",!enemy); sDamage(doing); }
if (fff=30) { sS(mBGun0); target=sEnemyTarget("random",!enemy); sDamage(doing); }
if (fff=35) { sS(mBGun0); target=sEnemyTarget("random",!enemy); sDamage(doing); }
if (fff=40) { sS(mBGun0); target=sEnemyTarget("random",!enemy); sDamage(doing); }
if (fff>50) { doing=-1; }
}
if (fff!=0) fff+=1;


