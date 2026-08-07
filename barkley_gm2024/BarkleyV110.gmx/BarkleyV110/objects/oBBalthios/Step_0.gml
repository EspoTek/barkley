if (prefin=1) { if (doing=-1) { prefin=-2; alarm[5]=5; } }
if (prefin=-2) exit;
if (exec!=-1) { doing=exec; exec=-1; prefin=1; }
if (doing!=-1) {
event_user(doing);
} else if (attack=1) {
 global.b_obj=global.b_middle;
 if (onr=1) {
  onr=0;/*
  if (instance_exists(scone)) {
   info[2]="Start Key - Zeta Scan#";
   info[2]+=scone.name +"#";
   info[2]+="VP " + sFormat(scone._vp,4) + "/" + sFormat(scone._rvp,4) + " BP "+ sFormat(scone._bp,3) + "/" + sFormat(scone._rbp,3) +"#";
   info[2]+="Power " + sFormat(scone._power,3) + "    Guard "+ sFormat(scone._guard,3) + "#";
   info[2]+="Brain " + sFormat(scone._brain,3) + "    Speed "+ sFormat(scone._speed,3) + "#";
  } else {
   info[2]="Start Key - Zeta Scan#Former target destroyed.";
  }*/
 }
 if (sKey(global.key_action,1) && doing=-1) { doing=9; prefin=1; }
 if (sKey(global.key_cancel,1) && doing=-1) { doing=10; prefin=1; }
 if (sKey(global.key_start,1) && doing=-1) { doing=8; prefin=1; }
}
wdone=0;
if (walk!=-999) {
x+=lengthdir_x(wspd,point_direction(fx,fy,walk.fx+walkdist,walk.fy));
y+=lengthdir_y(wspd*2,point_direction(fx,fy,walk.fx+walkdist,walk.fy));
dist=point_distance(fx,fy,walk.fx+walkdist,walk.fy);
if (dist<=wspd) { wdone=1; walk=-999; sprite_index=sBBalthiosStand; }
}
