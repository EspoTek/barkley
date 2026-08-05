global.descriptor="Chromatic Orb lvl19";
global.b_obj=global.b_middle;
if (force=1) { event_user(8); exit; }

if (exec!=-1) { 
if (_bp<floor(_rbp/2)) { event_user(3); exit; }
_bp-=floor(_rbp/2);
fff=0; exec=-1;stage=0; doing=1; exit; 
}

if (stage=0) {
if (fff=0) { fff=1; img=3; oou=0; sS(mBChrome); }
if (fff=25) { 
img=4; oou=-1;
sS(mBVortex); 
ggg=instance_create(x,y-60,oBNeedler); ggg.target=target; ggg.speed=8; ggg.twist=1; ggg.master=id; ggg.sprite_index=sBReginald; ggg.image_index=10; ggg.image_speed=0; ggg.daf=0;
}
if (fff>25) {
if (instance_exists(oBNeedler)=0) { 
sDamage(doing); sBCondition("brain",-999,target); sBCondition("guard",-999,target); sBCondition("power",-999,target);
doing=-1; img=1; ended=0; finish=1; event_user(7);
} //else ggg.speed+=0.25;
}
}
if (fff!=0) fff+=1;
