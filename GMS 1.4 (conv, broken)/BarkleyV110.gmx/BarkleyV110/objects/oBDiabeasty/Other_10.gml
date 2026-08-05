global.descriptor="Glomp";
if (smile=1) { event_user(4); exit; }
if (exec!=-1) { fff=0; exec=-1; stage=0; doing=0; exit; }
if (stage=0) {
if (fff=0) { fff=1; sS(mBSugarfade0); }
ox=x; oy=y;
alp-=0.1;
image_xscale+=0.1;
image_yscale+=0.1;
if (alp<=0) { global.b_obj=target; stage=1; image_xscale=-2; image_yscale=2; }
} else if (stage=1 && fff>19) {
if (fff=20) { sS(mBSugarfade1); }
x=target.x+45;
y=target.y-(footy/2);
alp+=0.1;
image_xscale+=0.1;
image_yscale-=0.1;
if (alp>=1) { stage=2; sDamage(doing); fff=1; }
} else if (stage=2) {
alp-=0.1;
image_xscale-=0.1;
image_yscale+=0.1;
if (alp<=0) { global.b_obj=global.b_middle; stage=3;  fff=1; x=ox; y=oy; image_xscale=2; image_yscale=2; }
} else if (stage=3) {
if (fff>9) {
alp+=0.1;
image_xscale-=0.1;
image_yscale-=0.1;
if (alp>=1) { image_xscale=1; image_yscale=1; doing=-1; finish=1; ended=0; }
}
}
if (fff!=0) fff+=1;
