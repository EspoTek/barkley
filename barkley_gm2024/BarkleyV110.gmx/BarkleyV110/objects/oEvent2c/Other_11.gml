if (sOvar(object_index,-1)=1) exit;
sOvar(object_index,1);
with (oWall0) solid=0;
oBarkley.move="";
global.dialog=1;
global.jumpspd=6;
global.die=999;
sCinema(oBarkley,"catchup");
sCinema(oBarkley,"code",cine_0087);
repeat(15) {
sCinema(oBarkley,"code",cine_0088);
sCinema(oBarkley,"wait",0.1);
}
sCinema(oBarkley,"dialog","Sh-shit!",1);
sCinema(oBarkley,"code",cine_0089);
sCinema(oBarkley,"move","down",global.jumpspd);
sCinema(oBarkley,"move","down",global.jumpspd);
sCinema(oBarkley,"code",cine_0090);
sCinema(oBarkley,"quick","up");
sCinema(oBarkley,"code",cine_0091);
sCinema(oBarkley,"code",cine_0092);
sCinema(oBarkley,"move","down",global.jumpspd);
sCinema(oBarkley,"move","down",global.jumpspd);
sCinema(oBarkley,"move","down",global.jumpspd);
sCinema(oBarkley,"code",cine_0090);
sCinema(oBarkley,"quick","up");
sCinema(oBarkley,"code",cine_0091);
sCinema(oBarkley,"code",cine_0092);
sCinema(oBarkley,"move","down",global.jumpspd);
sCinema(oBarkley,"move","down",global.jumpspd);
sCinema(oBarkley,"move","down",global.jumpspd);
sCinema(oBarkley,"code",cine_0090);
sCinema(oBarkley,"quick","up");
sCinema(oBarkley,"code",cine_0091);
sCinema(oBarkley,"code",cine_0092);
sCinema(oBarkley,"move","down",global.jumpspd+2);
sCinema(oBarkley,"move","down",global.jumpspd+2);
sCinema(oBarkley,"move","down",global.jumpspd+2);
sCinema(oBarkley,"move","down",global.jumpspd+2);
sCinema(oBarkley,"code",cine_0093);
sCinema(oBarkley,"code",cine_0094);
sCinema(oBarkley,"catchup");
sCinema(oBarkley,"code",cine_0095);
sCinema(oBarkley,"wait",global.jumpspd/2);
sCinema(oBarkley,"code",cine_0096);
sCinema(oBarkley,"wait",0.5);
sCinema(oBarkley,"code",cine_0017);

sCinema1(oBarkley,"dialog","Shit, that hurt... everyone alright?",1);
sCinema1(oFollower3,"dialog","Yeah, I'm okay dad.",1);

sCinema2(oBarkley,"code",cine_0097);
sCinema2(oBarkley,"dialog","Hngh... My head... everyone alright?",1);
sCinema2(oFollower0,"dialog","For the love of Clispaeth, Charles... You need to be more careful.",1);
sCinema2(oFollower3,"dialog","I think I bruised my knee, but I'm ok dad.",1);

sCinema3(oBarkley,"code",cine_0098);
sCinema3(oBarkley,"dialog","Oarhhg! Hungh...... Ugh.... everyone... alright?",1);
sCinema3(oFollower0,"dialog","Ah! Fu..! You need to watch where you're going Charles!",1);
sCinema3(oFollower3,"dialog","Ow! I'm bleeding dad. I need some Ecto Cooler.",1);
sCinema3(oFollower2,"dialog","Hm? I'm fine. Must be the excellent shock absorption abilities of my B-Ball skin.",1);

sCinema4(oBarkley,"code",cine_0099);
sCinema4(oBarkley,"dialog","ARGGHGH! Unghf.... ba..... bball.... ugh...",1);
sCinema4(oBarkley,"dialog","...",1);
sCinema4(oBarkley,"dialog","Guuurrrrr..... uhhhhhhh....... everyone......... blerh..... everyone....",1);
sCinema4(oBarkley,"dialog","...",1);
sCinema4(oBarkley,"dialog","uhhhhhhhhhhhhhhhhhhhhhh... everyone alright?",1);
sCinema4(oFollower0,"dialog","Gahh! Charles, watch out! You'll kill us all!",1);
sCinema4(oFollower3,"dialog","OWWIE! Dad! Dad! Is my leg supposed to be bent this way?",1);
sCinema4(oFollower2,"dialog","What the fuck! Get a grip Charles. Get a fucking grip.",1);

sCinema(oBarkley,"code",cine_0100);
sCinema(oBarkley,"cond",cine_0101);
sCinema(oBarkley,"cond",cine_0102);
sCinema(oBarkley,"cond",cine_0103);
sCinema(oBarkley,"cond",cine_0104);
sCinema(oFollower0,"dialog","Well, the ladder's broken now so we won't be able to go back up.",1);
sCinema(oBarkley,"dialog","Damnit... Let's just keep going forward.",1);
sCinema(oBarkley,"code",cine_0074);
sCinema(oBarkley,"code",cine_0105);

