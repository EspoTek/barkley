if (floor(random(2))=1) { global.b_shadow=id; instance_create(x,y,oBShadow); }
if (image_xscale<1) {
image_xscale+=0.1;
image_yscale+=0.1;
speed=0;
} else {
image_xscale=1;
image_yscale=1;
speed=spd+image_index;
}
image_angle+=8+random(4);
cv+=1;
if (cv>119) instance_destroy();
if (x>target.x) {
instance_destroy();
if (image_index=0) { //touch
sBCondition("vp",floor(target._rvp/2),target); 
with (target) {
mw=floor(random(4));
if (mw=0) { sBCondition("guard",ceil(_rguard*.13),id); }
if (mw=1) { sBCondition("power",ceil(_rpower*.13),id); }
if (mw=2) { sBCondition("speed",ceil(_rspeed*.13),id); }
if (mw=3) { sBCondition("brain",ceil(_rbrain*.13),id); }
}
}
if (image_index=1) { 
sBCondition("vp",floor((target._rvp)),target); 
with (target) {
if (_xguard<0) _xguard=0;
  if (_xpower<0) _xpower=0;
  if (_xspeed<0) _xspeed=0;
  if (_xbrain<0) _xbrain=0;
}
} //knowledge
if (image_index=2) { sBCondition("vp",floor(target._rvp*.66),target); } //carress
sS(mHeal3);
}
