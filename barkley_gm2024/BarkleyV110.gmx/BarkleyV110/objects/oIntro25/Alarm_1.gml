if (room=RomSubwayCar1) {
sOvar(object_index,2);
oSoldier0.t=3;
oSoldier1.t=3;
global.nofollow=1;
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"move","up");
sCinema(oBarkley,"move","right");
sCinema(oBarkley,"move","right");
sCinema(oBarkley,"move","right");
//sCinema(oBarkley,'catchup');
sCinema(oBarkley,"code",cine_0288);
sCinema(oFollower0,"dialog","Trooper:\\You there, freeze!");
sCinema(oBarkley,"code",cine_0289);
sCinema(oFollower0,"dialog","The B-Ball Removal Department!",1);
sCinema(oBarkley,"dialog","Goddamn it... I knew it wasn't a bugbear.",1);
sCinema(oFollower0,"dialog","Trooper:\\That's him - Charles Barkley. Remember our orders.");
sCinema(oBarkley,"face","left");
sCinema(oBarkley,"dialog","Cyberdwarf, Balthios, stay back! I'll take care of these chumps...",1);
repeat (2) sCinema(oBarkley,"move","right",5);

sCinema(oBarkley,"quick","cancel");
sCinema1(oSoldier3,"hurt",oRaygun,oDummy,(16*3)+8);//3
sCinema1(oBarkley,"wait",0.5);
sCinema2(oBarkley,"jump","start");
sCinema2(oBarkley,"move","down",5);
sCinema2(oBarkley,"jump","end");
sCinema2(oSoldier3,"hurt",oRaygun,oDummy,(16*3)+8);//3
sCinema2(oBarkley,"wait",0.5);
sCinema2(oBarkley,"move","up",5);
sCinema2(oBarkley,"face","right");
sCinema(oBarkley,"code",cine_0269);
sCinema(oBarkley,"code",cine_0270);
sCinema(oBarkley,"cond",cine_0102);
sCinema(oBarkley,"cond",cine_0101);

sCinema(oBarkley,"code",cine_0282);
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"code",cine_0283);
sCinema(oBarkley,"code",cine_0277);
sCinema(oSoldier1,"move","up");
sCinema(oSoldier1,"move","left");
sCinema(oFollower0,"dialog","Trooper:\\Give it up Barkley! You got no where to run!");
sCinema(oBarkley,"dialog","Heh... Who said I was gonna run?",1);

sCinema(oBarkley,"quick","action");
sCinema3(oSoldier3,"hurt",oRaygun,oBarkley,(16*2)+8);
sCinema3(oBarkley,"wait",0.5);
sCinema4(oBarkley,"jump","start");
sCinema4(oBarkley,"move","down",5);
sCinema4(oBarkley,"jump","end");
sCinema4(oSoldier3,"hurt",oRaygun,oDummy,(16*2)+8);
sCinema4(oBarkley,"wait",0.5);
sCinema4(oBarkley,"move","up",5);
sCinema4(oBarkley,"face","right");
//sCinema(oBarkley,'code',cine_0271);
sCinema(oBarkley,"code",cine_0158);
sCinema(oBarkley,"cond",cine_0104);
sCinema(oBarkley,"cond",cine_0103);

sCinema(oBarkley,"code",cine_0290);
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"code",cine_0287);
sCinema(oBarkley,"code",cine_0277);
repeat (5) sCinema(oBarkley,"move","left",5);
sCinema(oBarkley,"move","down",5);

//sCinema(oBarkley,'code',cine_0291);
sCinema(oBarkley,"dialog","That can't be all of them. Let's head 'em off in the next car.",1);
sCinema(oBarkley,"code",cine_0222);
sCinema(oBarkley,"move","up",5);
sCinema(oBarkley,"move","right",5);
sCinema(oBarkley,"move","right",5);
sCinema(oBarkley,"move","right",5);
repeat (13) sCinema(oBarkley,"move","right",5);
sCinema(oBarkley,"move","down",5);
sCinema(oBarkley,"move","right",5);
sCinema(oBarkley,"move","right",5);
}
