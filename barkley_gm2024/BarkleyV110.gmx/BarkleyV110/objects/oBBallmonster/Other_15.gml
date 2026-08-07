//Mega Stomp
if (exec!=-1) { canthit=0; global.descriptor="Mega Stomp"; sprite_index=sBBallmonster; fff=0; exec=-1; stage=0; doing=5; x=global.b_middle.x; y=global.b_middle.y-240; exit; }
global.b_obj=global.b_middle;
if (stage=0) {
if (fff=0) { fff=1; img=8; inair=0; vspeed=20; }
if (y+footy>global.b_middle.y && fff<100) { y=global.b_middle.y-footy; sS(mBallmonster1) fff=100; sDamage(doing); vspeed=0; }
x=x-(4/2)+random(4);;
y=y-(4/2)+random(4);
if (fff>130) { vspeed=0; hspeed=0; doing=-1; img=1; } //prevents skip
}
if (fff!=0) fff+=1;
