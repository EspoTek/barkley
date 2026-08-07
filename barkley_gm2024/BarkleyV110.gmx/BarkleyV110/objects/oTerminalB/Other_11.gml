global.dialog=1;
if (sOvar(object_index,-1)=-1) {
sCinema(oFollower0,"dialog","Computer:\\Current lift status: inactive. Please insert blue key.");
sCinema(oBarkley,"dialog","I guess we'd better find it then.",1);
} else if (sOvar(object_index,-1)=3) {
sCinema(oFollower0,"dialog","Computer:\\Current lift status: active.");
sCinema(oBarkley,"dialog","Basically I am done with keys. That shit was awful.",1);
} else { //2
sOvar(object_index,3);
sItem("Blue Keycard",-1);
sCinema(oFollower0,"dialog","Computer:\\Current lift status: inactive. Please insert red key.");
sCinema(oBarkley,"dialog","Alright, I'm going to put it in...",1);
sCinema(oBarkley,"code",cine_0479);
sCinema(oBarkley,"wait",1.5);
sCinema(oBarkley,"code",cine_0480);
sCinema(oFollower0,"dialog","Computer:\\Current lift status: active.");
sCinema(oBarkley,"dialog","Damn, why the hell did they make the elevator activation system do that shit? I can't even think of one reason why the whole fucking building should shake when you put the key in.",1);
sCinema(oFollower0,"dialog","It's probably just for security measures. It doesn't matter, the elevator's working now. Let's go!",1);
sCinema(oBarkley,"dialog","I hope they didn't have to do this key shit every time they wanted to use the elevator.",1);
}
