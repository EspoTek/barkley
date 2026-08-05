if (stage=0) {
if (global.selected=0) {
if (sOvar(object_index,-1)<2) {
sCinema(oBarkley,"dialog","There's some tools in one of the drawers. Most of them are too rusted, but it looks like the screwdriver can be used.",1);
sOvar(object_index,1);
} else {
sCinema(oBarkley,"dialog","There are tools in one of the drawers. All of them are too rusted to be any good.",1);
}
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=1) {
sCinema(oBarkley,"dialog","I can't use the work table.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=2) {
if (sOvar(object_index,-1)=1) {
sCinema(oBarkley,"dialog","Screwdrivers are pretty versitile. I'll grab it.",1);
sCinema(oBarkley,"item","Screwdriver",1);
sOvar(object_index,2);
} else {
sCinema(oBarkley,"dialog","Why would I want to do that?",1);
}
sCinema(oBarkley,"code",cine_0396);
} else {
sCinema(oBarkley,"code",cine_0006);
}
}
