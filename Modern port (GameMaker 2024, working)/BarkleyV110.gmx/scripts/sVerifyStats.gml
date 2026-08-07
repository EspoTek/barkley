//Makes sure nothing is under 0 or over threshold
with (oBattler) {
//Minus off status deals -- do attack halved here?
_power=_rpower;
_brain=_rbrain;
_guard=_rguard;
_speed=_rspeed;
if (c_parkinsons=1) _power=floor(_rpower/2);
if (c_handicapable=1) _brain=floor(_rbrain/2);
if (c_montezuma=1) _guard=floor(_rguard/2);
if (c_slowed=1) _speed=floor(_rspeed/2);
//glaucoma is in damage sub
_power+=_xpower;
_guard+=_xguard;
_speed+=_xspeed;
_brain+=_xbrain;
//Cap to lowest -50%
_rvp=max(_hvp,_rvp); //not used
_rbp=max(_hbp,_rbp); //not used
_power=max(_hpower,_power);
_guard=max(_hguard,_guard);
_speed=max(_hspeed,_speed);
_brain=max(_hbrain,_brain);
//
_bp=max(0,_bp);
_bp=min(_rbp,_bp);
_vp=max(0,_vp);
_vp=min(_rvp,_vp);
if (_vp<=0 && enemy=0) kill=1;
}