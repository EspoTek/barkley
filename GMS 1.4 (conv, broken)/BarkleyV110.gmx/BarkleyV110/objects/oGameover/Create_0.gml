sA("stopall");
bad=0;
if (global.scheme[8]=1) bad+=1;
if (sOvar(oCivil6,-1)=2) bad+=1;
if (sOvar(oWildman,-1)=2) bad+=1;
if (sOvar(oSteambrast,-1)=2) bad+=1;
if (sOvar(oDVitale,-1)=2) bad+=1;
if (bad>=5) { global.scheme[8]=0; global.roz=RomDeath0; room_goto(RomDeath0); exit; }
pos=0;
y+=10; //20
fade=0;
image_alpha=0;
alarm[0]=30;
sV();
