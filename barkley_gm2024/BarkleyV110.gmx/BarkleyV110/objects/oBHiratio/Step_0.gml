depth=-hy;
fff+=1;
gh=310;
if (fff=1) sound_loop(mHiratio2);
if (fff=30) rs=3;
if (fff=90) hys=6;
if (fff=120) hys=0;
if (fff=130) rs=-6;
if (fff=170) sound_stop(mHiratio2);
for (sht=180; sht<181+110; sht+=4) {
if (fff=sht+1) { hi=1; sS(mHiratio0); sT(c_white,0.5,1); instance_create(hx-60,hy-45,oBHullet); }
if (fff=sht+2) { hi=1; sT(c_white,0.25,1); }
if (fff=sht+3) { hi=0; sT(c_white,0,1); }
}
if (fff=gh) { hi=3; gre=1; }
if (fff=gh+20) { hi=2; gre=0; fol=instance_create(hx-25,hy-40,oBGrenade); with (fol) path_start(pChaff,8,0,0); }
if (instance_exists(oBGrenade)=0 && fff>gh+20 && ob=0) { sT(c_white,.75,1); ob=1; alarm[0]=1; }
if (fff>=gh+80) { 
hxs=6; 
cou+=1;
if (cou>3) { cou=0; if (hi=2) hi=3; else hi=2; }
}
if (fff=gh+130) instance_destroy();
