if (prefin=1) { if (instance_exists(oProjectile)=0 && air=0 && jstage=0) { prefin=-2; alarm[5]=10; } }
if (prefin=2) { if (instance_exists(oProjectile)=0 && oBTimer.visible=0 && fstage=0) { prefin=-2; alarm[5]=10; } }
if (prefin=3) { if (instance_exists(oProjectile)=0 && oBTimer.visible=0 && pstage=0) { prefin=-2; alarm[5]=10; } }
if (prefin=-2) exit;
//skill
if (dummy=1) {
visible=!visible;
master.visible=!visible;
exit;
}
//
if (global.turn=id) {
if (onrl=0) {
tpp="null";
if (prefin=-1 && fadstat=-1) { sDamageC(id,"Guard Down",c_ltgray); fadstat=-9; _rguard-=fadamt; sVerifyStats(); }
if (prefin=-1 && fadstat=1) { sDamageC(id,"Guard Up",c_ltgray); fadstat=-9; _rguard+=fadamt; sVerifyStats(); }
onrl=1;
}
} else onrl=0;
if (exec!=-1) { event_user(exec); doing=exec; exec=-1; }
if (doing>=0 && doing<=9) {
event_user(doing);
} else if (attack=1) {
//if (prefin=-1 || prefin=1) 
event_user(10); //jump
//if (prefin=-1 || prefin=2) 
event_user(11); //pass
//if (prefin=-1 || prefin=3) 
event_user(12); //free
}
wdone=0;
if (walk!=-999) {
x+=lengthdir_x(wspd,point_direction(fx,fy,walk.fx+walkdist,walk.fy));
y+=lengthdir_y(wspd*2,point_direction(fx,fy,walk.fx+walkdist,walk.fy));
dist=point_distance(fx,fy,walk.fx+walkdist,walk.fy);
if (dist<=wspd) { wdone=1; walk=-999; image_speed=0.2; sprite_index=sBBarkleyStand; }
}
