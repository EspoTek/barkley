if (global.selected=0) {
sItem("Poleshaft",-1);
sOvar(oSteambrast,1);
sCinema(oBarkley,"dialog","That's a pretty fair trade.",1);
sCinema(oFollower0,"dialog","Are you sure Barkley? This could be a priceless relic.",1);
sCinema(oBarkley,"dialog","It's not like I was going to do anything with it. Alright Steambrast, you got yourself a deal.",1);
sCinema(oBarkley,"dialog","Gave the Poleshaft to Octavius Steambrast.",0);
sCinema(oBarkley,"dialog","Octavius Steambrast:\\Jhodan will be pleased... Many thanks, your cooperation will not go unnoticed. Good day.",0);
sCinema(oSteambrast,"move","down");
sCinema(oSteambrast,"move","down");
} else {
sOvar(oSteambrast,2);
sCinema(oBarkley,"dialog","I think I'll hold onto this.",1);
sCinema(oBarkley,"dialog","Octavius Steambrast:\\This displeases me greatly. You have made an enemy today Charles Barkley.",0);
sCinema(oSteambrast,"move","down");
sCinema(oSteambrast,"move","down");
sCinema(oSteambrast,"face","up");
sCinema(oBarkley,"dialog","Octavius Steambrast:\\Make no mistake... I will have the last laugh.",0);
}
sCinema(oSteambrast,"move","down");
sCinema(oBarkley,"dialog","Octavius Steambrast:\\Steam blast commence!",0);
sCinema(oBarkley,"code",cine_0382);
sCinema(oBarkley,"wait",4);
sCinema(oBarkley,"dialog","I've have enough of this island. Let's visit Yelmirb so we can finally get off of this damn rock.",1);
sCinema(oBarkley,"code",cine_0383);
