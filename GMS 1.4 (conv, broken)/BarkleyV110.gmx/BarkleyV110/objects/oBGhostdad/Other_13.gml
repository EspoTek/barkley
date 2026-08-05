global.descriptor="Fog Breath";
if (exec!=-1) { 
if (_bp<20) { event_user(floor(random(3))); exit; }
_bp-=20; wdoing=3; bou=0; fff=1; stage=0; walk=global.b_middle; walkdist=6; exit;
}
if (stage=0) {
img=1+floor(random(2));
olk=instance_create(x+15,y,oBDummy);
olk.visible=1;
olk.depth=-999;
olk.sprite_index=sBGhostdad0;
olk.image_index=1; olk.image_speed=0;
olk.alarm[11]=30;
olk.direction=360-45+random(90);
olk.speed=4+random(3);
if (fff>7) { fff=1; sS(mSlamspectre0); bou+=1; }
if (bou>7) { fff=1; img=1; with (oBattler) { if (enemy=0) sBCondition("speed",-floor(_rspeed/7),id); } oDamage.depth=-1000; stage=1; }
} else if (stage=1) {
if (fff>19) { img=1; stage=0; doing=-1; }
}
if (fff!=0) fff+=1;
