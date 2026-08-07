if (sKey(global.key_cancel,1)) { sP(-1); sFileData(5); }
if (sKey(global.key_up,1)) { sP(); pos=max(0,pos-1); }
if (sKey(global.key_down,1)) { sP(); pos=min(2,pos+1); }
if (sKey(vk_space,1) || sKey(vk_enter,1) || sKey(global.key_action,1)) {
if (global.doload=1) global.activeslot=pos+1;
erf=sFileData(1+global.doload,pos+1);
if (erf=1) sP(1);
else sP(-1);
sFiler();
}
