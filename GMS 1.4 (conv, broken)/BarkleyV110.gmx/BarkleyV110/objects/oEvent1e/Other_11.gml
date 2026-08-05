if (global.temp2=1) exit;
global.dialog=1;
oBarkley.move="";
global.temp2=1; 
if (sOvar(oCaptain0,-1)!=2) sCinema(oBarkley,"dialog","I don't think we're supposed to go back here.",1);
else sCinema(oBarkley,"dialog","I'm done with this whole arena thing. No thanks.",1);
sCinema(oBarkley,"move","down");
sCinema(oBarkley,"code",cine_0070);
