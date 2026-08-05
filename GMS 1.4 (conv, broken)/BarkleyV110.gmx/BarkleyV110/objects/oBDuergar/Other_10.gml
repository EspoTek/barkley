global.descriptor="Level 2 Melf's Acid Arrow";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; doing=0; stage=0; exit; }
if (stage=0) {
if (fff=0) { fff=1; }
if (fff=15) { sS(mBCross); ggg=instance_create(x+20,y,oBNeedler); ggg.depth=target.depth-1; ggg.target=target; ggg.master=id; ggg.sprite_index=sBDuergar; ggg.image_index=1; ggg.image_speed=0; ggg.speed=5; }
if (fff>15 && instance_exists(oBNeedler)=0) { sS(mMutantballer1); sBCondition("inflict","diabetes",target.id); doing=-1; ended=0; finish=1; }
}
if (fff!=0) fff+=1;

