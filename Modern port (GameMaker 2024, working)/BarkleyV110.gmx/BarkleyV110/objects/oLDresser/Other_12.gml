if (stage=0) {
if (global.selected=0) {
sCinema(oBarkley,"dialog","There's some clothes in here, mostly worn-out black robes.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=1) {
sCinema(oBarkley,"dialog","I don't want to put anything in the dresser, so I'm not going to use it.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=2) {
if (sOvar(object_index,-1)=-1) {
sOvar(object_index,1);
sCinema(oBarkley,"dialog","There's a pretty good robe in here, maybe Balthios could use it.",1);
sCinema(oBarkley,"item","Zaubermancer Garb",1);
sCinema(oBarkley,"code",cine_0396);
} else {
sCinema(oBarkley,"dialog","There's nothing I want in the dresser.",1);
sCinema(oBarkley,"code",cine_0396);
}
} else {
sCinema(oBarkley,"code",cine_0006);
}
}
