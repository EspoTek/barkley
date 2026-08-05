global.dialog=1;
if (global.selected=1) {
sOvar(object_index,3);
sCinema(oBarkley,"dialog","Mark:\\But... But! You can't do this! You can't simply dangle the finest piece of craftsmanship in front of the face of a master guns'braster! You MUST give it to me... I... I am suffocating. I will surely die without it, now that I have seen it. Please...");
sCinema(oBarkley,"dialog","Nope.",1);
sCinema(oBarkley,"dialog","Mark:\\You leave me no choice. If I can't have the F.I.N.A.L. G.U.N., I will follow it until my very demise.");
sCinema(oBarkley,"dialog","What? Get outta my face.",1);
sCinema(oBarkley,"dialog","Mark:\\G.U.N.S...");
sCinema(oBarkley,"code",cine_0420);
sCinema(oBarkley,"code",cine_0006);
} else {
sOvar(oMark,2);
sItem("F.I.N.A.L. G.U.N.",-1)
sCinema(oBarkley,"dialog","Mark:\\Yes... The power... The mystique... I shall not soon forget this, bringer of the F.I.N.A.L. G.U.N. You will undoubtedly go in the history books for this.");
sCinema(oBarkley,"dialog","What about my reward?",1);
sCinema(oBarkley,"dialog","Mark:\\Oh, how could I forget? Here it is.");
sCinema(oBarkley,"item","Gun's Sticker",1);
sCinema(oBarkley,"dialog","Mark:\\I won this at the 2038 Gun'sCon for the best gun's collection. It's all yours now.");
sCinema(oBarkley,"dialog","What.",1);
sCinema(oBarkley,"dialog","Mark:\\Treasure it. That is the closest you will ever come to becoming a true guns'braster...");
sCinema(oFollower0,"dialog","I think we better go now.",1);
}
