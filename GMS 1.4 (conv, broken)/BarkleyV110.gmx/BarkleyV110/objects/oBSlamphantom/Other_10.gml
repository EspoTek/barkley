//Boomerang Ball
global.descriptor="Boomerang Ball";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; stage=0; doing=0; exit; }
if (stage=0) {
if (fff=0) { fff=1; }
if (fff>3) { stage=1; }
} else if (stage=1) {
img=3;
fff=1;
sound_play(mBThrow);
slqv=instance_create(x+20,y,oBBoomerang); slqv.target=target; slqv.master=id;
stage=1.5;
} else if (stage=2) {
if (fff>14) { doing=-1; img=1; ended=0; finish=1; }
}
if (fff!=0) fff+=1;
