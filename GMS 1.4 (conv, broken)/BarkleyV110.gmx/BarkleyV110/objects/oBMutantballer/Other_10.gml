//Balladash
if (evolve=0) { event_user(10); exit; }
if (exec!=-1) { 
if (_bp<10) { event_user(sR(1,2)); exit; }
_bp-=10;
fff=0; exec=-1; stage=0.1; doing=0; exit; }
global.b_obj=global.b_middle;
global.descriptor="Balla Dash";
if (stage=0.1) {
wspd=6;
walk=target;
walkdist=150;
if (wdone=1) { stage=0; wdone=0; walk=-999; vol=0.5; sound_volume(mMutantballer2,vol); sL(mMutantballer2); }
} else if (stage=0) {
if (fff=0) { 
fff=1; rou=13; img=2; 
//Dust
tob=oBMutantballerP0;
//End dust
}
fff+=2; //.5
if (fff>rou) {
vol+=0.02;
rou-=0.5;
fff=1;
if (img=4) img=1;
else if (img=1) img=2;
else if (img=2) img=3;
else if (img=3) img=4;
instance_create(x-15,y+15,tob);
tob.depth=target.depth-1;
sound_volume(mMutantballer2,vol);
}
if (rou<=1) { fff=1; stage=2; wspd=12; }
} else if (stage=2) {
instance_create(x-15,y+15,tob);
walk=target;
walkdist=22; //14
if (wdone=1) { fff=1; stage=3; wdone=0; walk=slav; sDamage(doing); sound_stop(mMutantballer2); sound_play(mMutantballer1); }
} else if (stage=3) {
if (wdone=1) stage=5;
} else if (stage=5) {
with (tob) {instance_destroy();} with (tob) instance_destroy();
x=slav.x-footx; y=slav.y-footy;
wdone=0;
wspd=8;
stage=0;
fff=0;
doing=-1;
img=1;
finish=1;
sound_volume(mMutantballer2,1);
}
if (fff!=0) fff+=1;
