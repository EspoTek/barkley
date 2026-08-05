global.dialog=1;
if (sOvar(oEvent13b,-1)=3) {
sCinema(oBarkley,"dialog","Suit:\\Please don't kill me... please...");
} else if (sOvar(oEvent13b,-1)=2) {
sCinema(oBarkley,"dialog","Suit:\\I don't like making exceptions.");
} else if (sOvar(oSuitRufus,-1)=3) {
sOvar(oEvent13b,2);
with (oEvent13b) instance_destroy();
sCinema(oBarkley,"dialog","When we get the final hardware, the performance is just going to skyrocket."+" Rufus sent me.",1);
sCinema(oBarkley,"dialog","Suit:\\Okay, okay, not out loud. I don't want to have to learn another code. Go ahead.");
} else if (sOvar(oIntro15,-1)=1) {
sCinema(oBarkley,"dialog","Suit:\\Yeah?");
if (sOvar(oSuitRufus,-1)=2) sCinema(oBarkley,"dialog","Choose:",0,"Bust into the office.","Nothing","Are you Rufus?");
else sCinema(oBarkley,"dialog","Choose:",0,"Bust into the office.","Nothing");
sCinema(oBarkley,"code",cine_0476);
} else {
sOvar(oEvent13b,1);
sCinema(oBarkley,"dialog","Suit:\\Allard's in with a patient. Busy. I suggest you wait like everyone else.");
}
