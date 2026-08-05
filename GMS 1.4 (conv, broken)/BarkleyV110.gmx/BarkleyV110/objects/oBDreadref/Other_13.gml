//Back-up
if (exec!=-1) { 
lok=sEnemyBackup();
vx=__view_get( e__VW.XView, 0 )+8;
vy=__view_get( e__VW.YView, 0 )+4;
if (lok=-999) { event_user(floor(random(3))); exit; }
img=2; fff=0; exec=-1; walkdist=25; stage=0.1; doing=3; 
walk=global.b_middle;
exit; }
if (stage=0.1) {
if (wdone=1) { wdone=0; stage=0.2; fff=0; fof=0; fef=0; img=4; }
} else if (stage=0.2) {
image_xscale=-1;
bak=instance_create(vx+global.b_px[lok],vy+global.b_py[lok],oBDreadref);
bak.x-=150;
bak.level=level;
with (bak) {
 aglc=0; global.aglcount+=_speed;
 walk=slav; walkdist=5;
}
stage=0.3;
} else if (stage=0.3) {
fff+=1;
if (fff>44) { 
stage=0.4; walk=slav; walkdist=5; 
}
} else if (stage=0.4) {
if (wdone=1) { 
finish=1; wdone=0; stage=0; doing=-1; image_xscale=1; //with (lef) instance_destroy(); 
}
}

