if (exec!=-1) { doing=exec; stage=0; rou=0; exec=-1; attack=0; }
if (doing!=-1 && doing<6) event_user(doing);
else if (attack=1) {
//walk=target;
//if (sKey(vk_anykey) && doing=-1) { 
if (onr=1) { stage=0; rou=0; doing=12; onr=0; }
if (doing!=-1) event_user(doing);
}
if (attack=0) onr=1;
wdone=0;
if (walk!=-999) {
if (walk=slav && instance_exists(oDamage)=0) global.b_obj=global.b_middle;
x+=lengthdir_x(wspd,point_direction(fx,fy,walk.fx+walkdist,walk.fy));
y+=lengthdir_y(wspd*2,point_direction(fx,fy,walk.fx+walkdist,walk.fy));
dist=point_distance(fx,fy,walk.fx+walkdist,walk.fy);
if (dist<=wspd) { wdone=1; walk=-999; sprite_index=sBCyberStand; }
}
