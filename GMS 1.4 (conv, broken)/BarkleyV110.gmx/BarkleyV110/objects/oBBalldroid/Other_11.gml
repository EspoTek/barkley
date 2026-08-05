var tttmp;
//Smoke Breath
global.descriptor="Smoke Breath";
global.b_obj=global.b_middle;
if (exec!=-1) { 
if (_bp<5) { event_user(0); exit; }
_bp-=5;
fff=0; exec=-1; gl=0; walkdist=100; stage=0; wdoing=1; walk=target; exit; }
if (stage=0) {
if (fff=0) { global.b_obj=target; sS(mSlamspectre0); fff=1; img=9; }
gl=!gl;
if (gl=1) { tttmp=instance_create(x+3,y-7,oBSmoky); tttmp.target=target; }
if (fff>19) { img=1; bottle=0; stage=2; sBCondition("power",-round(target._rvp/4),target); sound_stop(mSlamspectre0); fff=1; }
} else if (stage=2) {
if (fff>4) { doing=-1; }
}
if (fff!=0) fff+=1;
global.b_obj=global.b_middle;
