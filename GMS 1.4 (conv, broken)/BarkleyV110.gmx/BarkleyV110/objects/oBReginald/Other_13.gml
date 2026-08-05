global.descriptor="Eat Sandwich";
global.b_obj=global.b_middle;
if (force=1) { event_user(8); exit; }
if (exec!=-1) { fff=0; exec=-1; stage=0; doing=3; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=14; ill=0; }
if (fff=30) { img=8; sS(mBEat); }
if (fff=35) { img=9; }
if (fff=40) { img=8; }
if (fff=45) { img=9; }
if (fff=50) { img=8; }
if (fff=55) { img=9; }
if (fff=60) { sBCondition("bp",999,id); sS(mItemUse); }
if (fff=61) { doing=-1; ended=0; img=1; finish=1; }
}
if (fff!=0) fff+=1;
