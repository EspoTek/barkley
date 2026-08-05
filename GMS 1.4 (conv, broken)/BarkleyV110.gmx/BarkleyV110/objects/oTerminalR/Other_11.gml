global.dialog=1;
if (sOvar(object_index,-1)=-1) {
sCinema(oFollower0,"dialog","Computer:\\Current lift status: inactive. Please insert red key.");
sCinema(oBarkley,"dialog","I guess we'd better find it then.",1);
} else if (sOvar(object_index,-1)=3) {
sCinema(oFollower0,"dialog","Computer:\\Current lift status: active.");
} else { //2
sOvar(object_index,3);
sItem("Red Keycard",-1);
sCinema(oFollower0,"dialog","Computer:\\Current lift status: inactive. Please insert red key.");
sCinema(oFollower3,"dialog","Hurry up dad, put it in!",1);
sCinema(oBarkley,"dialog","Here goes...",1);
sCinema(oBarkley,"code",cine_0479);
sCinema(oBarkley,"wait",1.5);
sCinema(oBarkley,"code",cine_0481);
sCinema(oBarkley,"dialog","Whoa, what the hell was that?",1);
sCinema(oFollower0,"dialog","Computer:\\Current lift status: active.");
sCinema(oFollower0,"dialog","So does that mean the elevator's working now?",1);
sCinema(oFollower3,"dialog","I don't think so, Mr. James. We still have to find the blue key.",1);
sCinema(oFollower0,"dialog","Damn. Alright, we'd better go find it.",1);
}
