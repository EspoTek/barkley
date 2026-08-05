if (stage=0) {
if (global.selected=0) {
if (sOvar(object_index,-1)=-1) sCinema(oBarkley,"dialog","The boulder is blocking the entrance of a cave. It's too heavy to push out of the way.",1);
else sCinema(oBarkley,"dialog","It's a big boulder. I moved it using the power of leverage.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=1) {
if (sOvar(oIntroL3,-1)=1) {
if (sItem("Triangle Rock")>0 && sItem("Pipe")>0) {
sOvar(object_index,1);
sItem("Pipe",-1);
sItem("Triangle Rock",-1);
sCinema(oFollower0,"dialog","Barkley, you can use the rock and pipe we found earlier to create leverage to push the rock out of the way.",1);
sCinema(oBarkley,"dialog","Really? What luck that I picked up the correct objects to solve this conundrum.",1);
sCinema(oBarkley,"code",cine_0408);
sCinema(oBarkley,"move","down");
repeat (16) { sCinema(oBarkley,"code",cine_0409); sCinema(oBarkley,"wait",.1); }
sOvar(object_index,1);
} else if (sOvar(object_index,-1)=1) {
sCinema(oBarkley,"dialog","I already pushed it out of the way.",1);
} else {
sCinema(oBarkley,"dialog","I wish I could move the boulder blocking the cave, but it's too heavy.",1);
sCinema(oFollower0,"dialog","Rutherford told us the Palladium Orb Sceptre is in there. We need to go in there if we want to see Yelmirb. Perhaps with some tools we could move this out of the way.",1);
sCinema(oBarkley,"code",cine_0396);
}
} else {
sCinema(oBarkley,"dialog","Hmm, I'll try knocking on it three times. I heard this works with some boulders.",1);
sCinema(oBarkley,"code",cine_0410);
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"code",cine_0410);
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"code",cine_0410);
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"dialog","Nope.",1);
sCinema(oBarkley,"code",cine_0396);
}
} else if (global.selected=2) {
sCinema(oBarkley,"dialog","I don't know how I am going to take it, I can't pick it up.",1);
sCinema(oBarkley,"code",cine_0396);
} else {
sCinema(oBarkley,"code",cine_0006);
}
}
