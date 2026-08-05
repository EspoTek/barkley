global.descriptor="Dinosaur Spit";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; doing=0; stage=0; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=7; }
if (fff=1) sS(mBTspit);
if (fff=25) { 
img=8;
//sS(mBNeedler); 
ggg=instance_create(x+35,y+10,oBNeedler); ggg.target=target; ggg.master=id; ggg.sprite_index=sBTrex1; ggg.image_index=2; ggg.image_speed=0; ggg.daf=0;
} else if (fff>30 && instance_exists(oBNeedler)=0) { 
sBCondition("guard",-ceil(target._rguard*.15),target);
sBCondition("speed",-ceil(target._rspeed*.15),target);
sBCondition("power",-ceil(target._rpower*.15),target);
sBCondition("brain",-ceil(target._rbrain*.15),target);
doing=-1; img=1; ended=0; finish=1; target.shake=7;
}
}
if (fff!=0) fff+=1;


