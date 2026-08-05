global.descriptor="Spook";
if (exec!=-1) { fff=0; exec=-1; stage=0; doing=0; exit; }
if (stage=0) {
ox=x; oy=y;
alp-=0.05;
if (alp<=0) { global.b_obj=target; stage=1; image_xscale=-1; fff=1; }
} else if (stage=1 && fff>19) {
x=target.x+45;
y=target.y-(footy/2);
alp+=0.2;
if (alp>=1) { stage=2; sBCondition("inflict","glaucoma",target); sDamage(doing); fff=1; sound_play(mBLaugh3); }
} else if (stage=2 && fff>9) {
alp-=0.1;
if (alp<=0) { global.b_obj=global.b_middle; stage=3; image_xscale=1; fff=1; x=ox; y=oy; }
} else if (stage=3 && fff>9) {
alp+=0.1;
if (alp>=1) { doing=-1; finish=1; }
}
if (fff!=0) fff+=1;
