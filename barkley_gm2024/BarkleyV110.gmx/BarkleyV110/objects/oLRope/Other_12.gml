if (stage=0) {
if (sOvar(object_index,-1)=-1) sOvar(object_index,0);
if (global.selected=0) {
sCinema(oBarkley,"dialog","Looks like ordinary rope. There are " +  string(sOvar(object_index,-1)) +" knot(s) in the rope.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=1) {
sOvar(object_index,sOvar(object_index,-1)+1);
sCinema(oBarkley,"dialog","Ok, I'll tie a knot in the rope... There. The rope now has " +  string(sOvar(object_index,-1)) +" knot(s) in it.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=2) {
sCinema(oBarkley,"dialog","This rope on the ground -- that is the rope with " +  string(sOvar(object_index,-1)) +" knot(s) -- has very little use for me.",1);
sCinema(oBarkley,"code",cine_0396);
} else {
sCinema(oBarkley,"code",cine_0006);
}
}
