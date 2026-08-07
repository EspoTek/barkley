global.dialog=1;
if (sOvar(oEvent13b,-1)=3) {
sCinema(oBarkley,"dialog","Suit:\\Allard's gonna fucking kill us.");
} else if (sOvar(oEvent13b,-1)=2) {
sCinema(oBarkley,"dialog","Suit:\\Hurry up and get in there.");
} else if (sOvar(oSuitRufus,-1)=3) {
sOvar(oEvent13b,2);
with (oEvent13b) instance_destroy();
sCinema(oBarkley,"dialog","When we get the final hardware, the performance is just going to skyrocket."+" Rufus sent me.",1);
sCinema(oBarkley,"dialog","Suit:\\Okay, okay, not out loud. I don't want to have to learn another code. Go ahead.");
} else if (sOvar(oIntro15,-1)=1) {
sCinema(oBarkley,"dialog","Suit:\\What do you want?");
if (sOvar(oSuitRufus,-1)=2) sCinema(oBarkley,"dialog","Choose:",0,"Bust into the office.","Nothing","Are you Rufus?");
else sCinema(oBarkley,"dialog","Choose:",0,"Bust into the office.","Nothing");
sCinema(oBarkley,"code",cine_0474);
} else {
sOvar(oEvent13b,1);
sCinema(oBarkley,"dialog","Suit:\\I like your orange friend over there. The doctor could do some real good work on him. I'm guessing you're not here for surgery though. All the same, you're going to have to wait. Plenty of paying customers have been here for much longer than you have. Go have a seat.");
}
