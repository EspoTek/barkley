//Burst Airflow
if (exec!=-1) { exec=-1; walkdist=25; stage=0; wdoing=2; walk=target; exit; }
if (stage=0) {
if (fff=0) { sS(mWhistle2); fff=1; }
rot+=fff;
if (fff>60) { stage=1; fff=0; }
} else if (stage=1) {
if (fff=0) {
sDamage(doing);
fff=1;
sS(mWhistle3);
//
tob=oBWhistleP0;
//GM <=8 applied obj.var to EVERY instance; GameMaker 2024 picks one, so 19 of
//these 20 burst particles kept their default depth and drew in front of the
//target instead of behind it. `with` restores the original meaning.
repeat (20) instance_create(x,y,tob);
with (tob) depth=other.target.depth-1;
//
tob2=oBWhistleP1;
repeat (3) instance_create(x,y,tob2);
with (tob2) depth=other.target.depth-1;
visible=0;
}
if (fff>60) { fff=0; doing=-1; with (tob) instance_destroy(); with (tob2) instance_destroy(); x=slav.x; y=slav.y; walk=-999; alarm[0]=30; ended=0; finish=1; }
}
if (fff!=0) fff+=1;
