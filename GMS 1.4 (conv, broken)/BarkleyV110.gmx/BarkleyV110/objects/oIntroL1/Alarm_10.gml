if (sOvar(oMack,-1)=-1 && sOvar(oIntroL3,-1)=3) {
oDiabeastie.x=-999; oSteambrast.x=-999;
} else {
if (sOvar(oMack,-1)=4) {
oMack.y+=16; oMack.t=2;
alarm[1]=1;
} else { 
if (sOvar(oMack,-1)=5) {
sPos("load");
alarm[2]=1;
} else {
oDiabeastie.x=-999; oMack.x=-999; oSteambrast.x=-999;
}
}
}
