global.descriptor="Ghost Muscle";
if (exec!=-1) { 
if (_bp<10 || _xpower>0) { event_user(floor(random(3))); exit; }
_bp-=10; stage=0; fal=0; fff=1; doing=4; exit; 
}

if (stage=0) {
image_xscale+=0.025;
image_yscale+=0.025;
if (image_xscale>1.5) { stage=1; sBCondition("power",999,id); sS(mBallmonster0); }
} else if (stage=1) {
image_xscale-=0.05;
image_yscale-=0.05;
if (image_xscale<=1) { finish=1; doing=-1; }
}


if (fff!=0) fff+=1;
