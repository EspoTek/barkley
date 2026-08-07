global.descriptor="Blackout";
if (exec!=-1) { fff=0; exec=-1; stage=0; doing=4; exit; }
global.b_obj=global.b_middle;
if (stage=0) {
if (fff=0) { fff=1; sS(mBGhast); if (instance_exists(oBTinter)=0) instance_create(0,0,oBTinter); }
if (fff=2) sT(c_black,1,1/20);
if (fff=22) { sBCondition("vp",-9999,target); }
//if (fff=33) { target=sEnemyTarget('random',!enemy); sBCondition('vp',9999,target); }
if (fff=45) sT(c_black,0,1/60);
if (fff=60) stage=1;
} if (stage=1) {
img=1;
doing=-1;
ended=0;
finish=1;
}
if (fff!=0) fff+=1;

