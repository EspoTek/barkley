global.descriptor="Tongue Lash";
if (exec!=-1) { fff=0; exec=-1; stage=0; doing=2; exit; }
global.b_obj=global.b_middle;
if (stage=0) {
if (fff=0) { fff=1; img=3; sS(mBGargle);  }
if (fff=20) {
img=1;
ggg=instance_create(x,y,oBNeedler);
ggg.target=target; 
ggg.master=id;
ggg.daf=0;
ggg.speed=6;
ggg.sprite_index=sBDarklord; ggg.image_index=7; ggg.image_speed=0;
stage=1;
}
} if (stage=1 && instance_exists(oBNeedler)=0) {
sS(mSlamspectre1);
sBCondition("inflict","montezuma",target);
sBCondition("inflict","diabetes",target);
sBCondition("inflict","aspergers",target);
sBCondition("inflict","glaucoma",target);
sBCondition("inflict","handicapable",target);
img=1;
doing=-1;
ended=0;
finish=1;
}
if (fff!=0) fff+=1;

