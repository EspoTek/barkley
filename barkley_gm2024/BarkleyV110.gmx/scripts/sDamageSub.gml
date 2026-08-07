//Arg0 is who, arg1 is shake -- Balthios counter is here
global.b_att=_me;
hitting=sCover(argument0);

with (hitting) {

if (instance_exists(oBBalthios)) {
if (object_index=oBBalthios && defending=1 && _vp>0 && oBBalthios.c_stroke=0) { //&& global.b_att.Typ=1
sS(mBLaunchZ);
qqq=instance_create(x,y,oBZauber);
qqq.direction=point_direction(x,y,global.b_att.x,global.b_att.y);
qqq.target=global.b_att;
target=global.b_att;
qqq.type=wea;
}
}

if (instance_exists(oBHoopz)) {
if (global.b_evade>0 && object_index=oBHoopz && global.b_scover=0 && oBHoopz.c_stroke=0) {
global.b_evade=2;
sDamageC(oBHoopz.id,"!EVADE!",c_lime);
exit;
}
}

if (global.b_att.Typ=1) {
_acc=global.b_att._speed-_speed;
if (global.b_att.c_glaucoma=1) _acc=floor(_acc/2);
if (_acc>0) { _acct=(100/_speed); _acc=global.b_att.Acc+((_acc*_acct)/2); }
else { _acct=(100/global.b_att._speed); _acc=global.b_att.Acc-((abs(_acc)*_acct)/2); }
global.b_acc=string(global.b_att._speed) + " " + string(_speed) + " " + string(_acc);
_dmg=global.b_att._power-_guard;
_dmg+=floor(global.b_att.Dmg-(global.b_att.Dmg*(global.b_att.Var/2))+(global.b_att.Dmg*random(global.b_att.Var)));;
if (global.b_att.Dmg>0) _dmg=max(1,_dmg);
_dmg=floor(_dmg);
} else {
_acc=999;
_dmg=global.b_att._brain-_brain;
_dmg+=floor(global.b_att.Dmg-(global.b_att.Dmg*(global.b_att.Var/2))+(global.b_att.Dmg*random(global.b_att.Var)));;
if (global.b_att.Dmg>0) _dmg=max(1,_dmg);
_dmg=floor(_dmg);
}
if (random(100)<_acc && canthit=0) {
son=(instance_create(x,y,oDamage)); 
son.depth=depth-1; 
if (_vp<=0) _dmg=0;
son.dmg=_dmg;
_vp-=_dmg;
if (argument1=1) {
shake=max(3,((_dmg/_rvp)*100)/4);
shake=min(shake,50);
}
return(1);
} else { /////////////////////////////////////Miss
son=(instance_create(x,y,oDamage)); 
son.depth=depth-1; 
son.dmg="MISS";
return(0);
}

}