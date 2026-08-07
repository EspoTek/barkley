//Music
if (exec!=-1) { exec=-1; walkdist=8; stage=0; wdoing=1; walk=global.b_middle; exit; }
if (stage=0) {
if (fff=0) fff=1;
img=1;
if (fff>5) { stage=1; fff=0; cou=0; }
} else if (stage=1) {
if (fff=0) { 
sS(mWhistle1); 
tob=oBWhistleP2;
fff=1; 
}
cou+=1;
if (cou>4 && fff<60) { cou=0; instance_create(x+35,y-20,tob); tob.depth=target.depth-1; }
img=5;
if (fff=85) { with (oBattler) { if (enemy=0) {
if (floor(random(3))=1) sBCondition("inflict","stroke",id);
else sDamageC(id,"MISS",c_ltgray);
} } }
if (fff>90) { stage=1; fff=0; img=1; doing=-1; with (tob) {instance_destroy();} with (tob) instance_destroy(); }
}
if (fff!=0) fff+=1;
