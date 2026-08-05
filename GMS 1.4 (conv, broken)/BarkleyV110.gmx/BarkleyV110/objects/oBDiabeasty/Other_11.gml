global.descriptor="Sugar Storm";
if (smile=1) { event_user(4); exit; }
if (exec!=-1) { 
if (_bp<10) { event_user(floor(random(3))); exit; }
_bp-=10; wdoing=1; bou=0; fff=1; stage=0; walk=global.b_middle; walkdist=6; exit;
}
if (stage=0) {
if (fff=1) sS(mBSugarstorm);
img=3;
olk=instance_create(x+15,y,oBDummy);
olk.visible=1;
olk.depth=-999;
olk.sprite_index=sBGhostdad0;
olk.image_index=1; olk.image_speed=0;
olk.alarm[11]=45;
olk.direction=360-60+random(120);
olk.speed=2+random(2);
if (fff>7) { fff=1; bou+=1; }
if (bou>4) { fff=1; img=1; with (oBattler) { if (enemy=0) sBCondition("inflict","diabetes",id); } oDamage.depth=-1000; stage=1; }
} else if (stage=1) {
if (fff>29) { img=1; stage=0; doing=-1; }
}
if (fff!=0) fff+=1;
