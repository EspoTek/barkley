//BBall Twister
if (inair=1) { event_user(5); exit; }
if (exec!=-1) { global.descriptor="Ball Twister"; fff=0; exec=-1; stage=0; doing=2; exit; }
global.b_obj=global.b_middle;
if (stage=0) {
if (fff=0) { fff=1; img=8; }
if (fff=15) { 
arm=(instance_create(x+11,y,oBBallmonster1));
arm.depth=target.depth-1;
arm.xx=target.x;
arm.yy=target.y;
arm.master=id;
img=9;
}
} else if (stage=3) {
if (fff=10) { doing=-1; img=1; ended=0; finish=1; blaze=0; }
}
if (fff!=0) fff+=1;
