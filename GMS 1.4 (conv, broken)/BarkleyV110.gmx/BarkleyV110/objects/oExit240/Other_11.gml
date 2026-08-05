//global.posser=mystart;global.roomer=RomCatacombHub2;
if (sItem("Green Key") || sOvar(object_index,-1)=1) {
if (sItem("Green Key")) {
sItem("Green Key",-1);
sOvar(object_index,1);
}
global.posser=object_index;
if (room=rom0) global.roomer=rom1;
else global.roomer=rom0;
global.tupper=1;
} else {
sCinema(oBarkley,"dialog","Damnit, it's locked. There's a green slot, so maybe we need a green key or something.",1);
}
