if (stage=0) {
if (global.selected=0) { //sOvar(oRaffle,1);
sCinema(oBarkley,"dialog","This guy is a part of the diabetes cult on this island. That's about all I know.",1);
sCinema(oFollower0,"dialog","He's wearing a traditional Zaubermancer Garb as well Barkely. He most certainly is a conjurer.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=1) {
sCinema(oBarkley,"dialog","Rutherford:\\If you want the Palladium Orb Sceptre, you will have to head towards the cave on the south of the island.");
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=2) {
if (sOvar(oLChair,-1)=1) {
sOvar(oLChair,2);
sCinema(oBarkley,"dialog","Do you mind if we take that Pipe over there?",1);
sCinema(oBarkley,"dialog","Rutherford:\\Not at all. I've been meaning to get rid of it.");
sCinema(oBarkley,"dialog","Great. Let's get the pipe.",1);
} else {
sCinema(oBarkley,"dialog","No way am I going to let one of these cult members follow me around. The sooner I leave this place, the better.",1);
}
sCinema(oBarkley,"code",cine_0396);
} else {
sCinema(oBarkley,"code",cine_0006);
}
}
