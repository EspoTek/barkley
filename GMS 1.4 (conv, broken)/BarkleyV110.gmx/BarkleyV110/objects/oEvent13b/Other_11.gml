if (sOvar(object_index,-1)=3) exit;
sOvar(object_index,3);
global.dialog=1;
oBarkley.move="";
if (sOvar(oSuitRufus,-1)=3) {
instance_destroy();
sCinema(oBarkley,"dialog","Suit:\\The hell do you think you're doing?");
sCinema(oBarkley,"dialog","When we get the final hardware, the performance is just going to skyrocket."+" Rufus sent me.",1);
sCinema(oBarkley,"dialog","Suit:\\Okay, okay, so out loud. I don't want to have to learn another code. Hurry up and go in.");
sCinema(oBarkley,"code",cine_0080);
} else {
sCinema(oBarkley,"dialog","Suit:\\What the hell do you think you're doing?");
sCinema(oBarkley,"dialog","Suit:\\Dr. Allard takes one patient at a time. Don't try that again.");
sCinema(oBarkley,"move","down");
sCinema(oBarkley,"code",cine_0081);
}
