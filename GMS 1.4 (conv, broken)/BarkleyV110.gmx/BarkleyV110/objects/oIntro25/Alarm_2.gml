if (room=RomSubwayCar2) {
global.nofollow=1;
oWall.solid=0;
sOvar(object_index,3);
oSoldier0.t=3;
oSoldier1.t=3;
oSoldier2.t=3;
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"move","right",5);
sCinema(oBarkley,"move","right",5);
sCinema(oBarkley,"move","up",5);
sCinema(oBarkley,"move","right",5);
sCinema(oBarkley,"move","right",5);
sCinema(oFollower0,"dialog","Trooper:\\There he is! Bring him down.");
repeat (4) sCinema(oBarkley,"move","right",5);

sCinema(oBarkley,"quick","up");
sCinema1(oSoldier3,"hurt",oRaygun,oDummy,(16*4)+8);
sCinema1(oBarkley,"wait",0.5);
sCinema1(oBarkley,"move","up");
sCinema2(oBarkley,"move","up");
sCinema2(oSoldier3,"hurt",oRaygun,oDummy,(16*4)+8);
//sCinema2(oSoldier3,'code',cine_0281);
sCinema2(oBarkley,"wait",0.5);
sCinema(oBarkley,"code",cine_0269);
sCinema(oBarkley,"code",cine_0270);
sCinema(oBarkley,"cond",cine_0102);
sCinema(oBarkley,"cond",cine_0101);

sCinema(oBarkley,"face","down");
sCinema(oBarkley,"code",cine_0282);
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"code",cine_0283);
sCinema(oBarkley,"code",cine_0277);
sCinema(oSoldier1,"move","up");
sCinema(oSoldier1,"move","left");
sCinema(oBarkley,"dialog","Nice little toy you got there, but how 'bout we settle this with fists?",1);
sCinema(oBarkley,"dialog","Trooper:\\You crazy son of baller... Let's do this.");
repeat(4) sCinema(oSoldier1,"move","left",5);
sCinema(oSoldier1,"face","up");

sCinema(oBarkley,"quick","left");
sCinema3(oSoldier3,"code",cine_0284);
sCinema3(oBarkley,"wait",0.5);
sCinema3(oSoldier3,"code",cine_0285);
sCinema4(oBarkley,"move","up");
sCinema4(oSoldier3,"hurt",oRaygun,oSoldier1,(16*4)+8);
sCinema4(oSoldier3,"code",cine_0281);
sCinema4(oBarkley,"wait",0.5);
//sCinema(oBarkley,'code',cine_0271);
sCinema(oBarkley,"code",cine_0158);
sCinema(oBarkley,"cond",cine_0104);
sCinema(oBarkley,"cond",cine_0103);

sCinema(oBarkley,"dialog","Trooper:\\Take this, ARGGGHH!");
sCinema(oBarkley,"code",cine_0286);
sCinema(oBarkley,"move","left",8);
sCinema(oSoldier1,"move","up",4);
sCinema(oSoldier1,"move","up",4);
sCinema(oBarkley,"code",cine_0287);
sCinema(oBarkley,"code",cine_0277);

sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"dialog","You guys ok? The last car's up ahead.",1);
sCinema(oBarkley,"move","down",5);
repeat (7) sCinema(oBarkley,"move","right",5); //11
sCinema(oBarkley,"move","down",5);
repeat (4) sCinema(oBarkley,"move","right",5);
}
