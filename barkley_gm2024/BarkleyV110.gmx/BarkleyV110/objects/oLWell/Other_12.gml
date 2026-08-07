if (stage=0) {
if (global.selected=0) {
sCinema(oBarkley,"dialog","The well looks deep. I can barely see the bottom of it.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=1) {
if (sOvar(oMack,-1)=2) {
sCinema(oBarkley,"dialog","Mack said the rod should be down here.",1);
sCinema(oFollower2,"dialog","He also said the Diabeastie lurks down below. We need to be cautious.",1);
sCinema(oBarkley,"dialog","The Diabeastie is a myth that these fruit cakes on the island made up. Let's get that rod...",1);
sCinema(oBarkley,"effect","fadein",3);
global.roz=RomLibertyWell;
} else if (sOvar(oMack,-1)>2) {
sCinema(oBarkley,"dialog","I'm not going down to that place again.",1);
} else {
sCinema(oBarkley,"dialog","Something tells me jumping down the well isn't such a good idea.",1);
}
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=2) {
sCinema(oBarkley,"dialog","There's no bucket on this well, so I can't take anything.",1);
sCinema(oBarkley,"code",cine_0396);
} else {
sCinema(oBarkley,"code",cine_0006);
}
}
