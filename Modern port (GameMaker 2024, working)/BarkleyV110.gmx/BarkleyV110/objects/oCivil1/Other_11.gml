global.dialog=1;
if (sOvar(oAllard,-1)=-1) {
if (sOvar(object_index,-1)=-1) {
sOvar(object_index,1);
sCinema(oBarkley,"dialog","Jessica:\\Hey there. You headed down?");
sCinema(oBarkley,"dialog","Not interested in hookers, lady. Try someone else.",1);
sCinema(oBarkley,"dialog","Jessica:\\Easy. easy. Just making a little conversation. I'm about to go down myself. It's dangerous down there but it's worth the risk depending on how much you can pull up. Proto Neo NY artifacts can go for a lot. Collector types with neo-shekels to burn. This toll kills me though. I'm paying $5000 a trip to Allard, all so I have enough to pay him again for surgery.");
sCinema(oFollower0,"dialog","What kind of surgery would that be, if you don't mind me asking?",1);
sCinema(oBarkley,"dialog","Jessica:\\Something for my first business.");
sCinema(oFollower0,"dialog","I see.",1);
} else {
sCinema(oBarkley,"dialog","Jessica:\\I'm not really into it, but clients will pay a lot for non-standard parts. Allard's control over the sewers can be a real pain in the ass, but he has made my business a lot more profitable. Guess I can't fault him too much. He's a great surgeon.");
}
} else {
if (sOvar(object_index,-1)!=5) {
sOvar(object_index,5);
sCinema(oBarkley,"dialog","Jessica:\\Well, I guess I owe you one for sticking it to the doctor like that. Makes life easier for all of us, you know?");
sCinema(oBarkley,"dialog","We're just trying to get to Proto Neo New York, lady. We didn't do it for anyone else.",1);
sCinema(oBarkley,"dialog","Jessica:\\It doesn't matter to me why you did it. Just be sure to stock up before you go there. You think it's bad up here? Wait until you get down real deep. It's pretty brutal. They say the b-ball energy levels are so out of control that they can mutate a person.");
sCinema(oBarkley,"dialog","That sounds pretty bad.",1);
sCinema(oBarkley,"dialog","Jessica:\\Yeah. Yeah it is.");
} else {
sCinema(oBarkley,"dialog","Jessica:\\Take care of yourself if you're going down there. It's not a pretty place.");
}
}
