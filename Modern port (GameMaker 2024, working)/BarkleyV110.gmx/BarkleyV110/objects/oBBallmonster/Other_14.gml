//Mega Jump
if (exec!=-1) { 
if (inair=1) { event_user(5); exit; }
if (blaze=2) { event_user(floor(random(4))); exit; } //do other
global.descriptor="Mega Jump"; fff=0; exec=-1; stage=0; doing=4; exit; 
}
global.b_obj=global.b_middle;
if (stage=0) {
if (fff=0) { fff=1; img=7; }
if (fff=15) { img=8; }
if (fff>9) {
x=x-(4/2)+random(4);
y=y-(4/2)+random(4);
}
if (fff=30) { img=1; vspeed=-10; hspeed=1; sS(mBallmonster2); }
if (fff>60) { canthit=1; sprite_index=sNuller; vspeed=0; hspeed=0; doing=-1; img=1; ended=0; finish=1; inair=1; x=slav.x; y=slav.y-50; } //prevents skip
}
if (fff!=0) fff+=1;
