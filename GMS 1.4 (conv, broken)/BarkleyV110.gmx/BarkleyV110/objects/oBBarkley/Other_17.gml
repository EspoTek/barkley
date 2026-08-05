//Plus 1 to random stat
mw=floor(random(4));
if (mw=0) { sBCondition("guard",ceil(_rguard*.1),id); }
if (mw=1) { sBCondition("power",ceil(_rpower*.1),id); }
if (mw=2) { sBCondition("speed",ceil(_rspeed*.1),id); }
if (mw=3) { sBCondition("brain",ceil(_rbrain*.1),id); }
