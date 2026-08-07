global.descriptor="Spontaneous Sugarfication";
global.b_obj=global.b_middle;
if (exec!=-1) { 
stage=0; fal=0; fff=1; wdoing=4; walk=target; walkdist=12; wspd=10; dsp=wspd; exit; 
}
if (stage=0) {
if (fff=1) sS(mBSpontaneous);
depth=target.depth-1;
image_xscale=.5+random(1);
image_yscale=.5+random(1);
if (fff>29) { stage=1; sDamage(doing); doing=-1; wspd=dsp; smile=0; image_xscale=1; image_yscale=1; }
}
if (fff!=0) fff+=1;
