//if (global.b_focus=0 || global.b_obj!=global.b_middle) { alarm[0]=1; exit; }
if (fadstat=-1) { sDamageC(id,"Guard Up",c_ltgray); fadamt=floor(_rguard/3); _rguard+=fadamt; }
if (fadstat=1) { sDamageC(id,"Guard Down",c_ltgray); fadamt=floor(_rguard/3); _rguard-=fadamt; }
sVerifyStats();
