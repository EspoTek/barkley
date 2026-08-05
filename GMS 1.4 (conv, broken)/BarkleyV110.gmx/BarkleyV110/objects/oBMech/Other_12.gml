global.descriptor="Gatorade Rain";
global.b_obj=global.b_middle;
if (exec!=-1) { exec=-1; ended=0; walkdist=10; stage=0; doing=-1; wdoing=2; walk=global.b_middle; exit; }
if (stage=0) {
if (fff=0) fff=1;
x=x-(4/2)+random(4);
y=y-(4/2)+random(4);
if (fff>30) { stage=1; fff=0; }
} else if (stage=1) {
if (fff=0) {
sDamage(doing);
if (random(1)<.5) {sBCondition("inflict","parkinsons",target);} else {sDamageC(target,"MISS",c_ltgray);}
fff=1;
sound_play(mWhistle3);
//
tob=oBMechP0;
repeat (40) instance_create(x,y,tob);
tob.depth=target.depth-1;
visible=0;
}
if (fff>60) { fff=0; doing=-1; with (tob) instance_destroy(); x=slav.x; y=slav.y; walk=-999; alarm[0]=30; ended=0; finish=1; }
}
if (fff!=0) fff+=1;
