if (stage=0) {
if (global.selected=0) {
sCinema(oBarkley,"dialog","Just what I needed. This door is locked too.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=1) {
if (sItem("Desk Key")>0) {
sItem("Desk Key",-1);
sCinema(oBarkley,"dialog","That key I found in the desk has to work here...",1);
sCinema(oBarkley,"effect","fadein",3);
global.roz=RomLibertyMain;
} else {
sCinema(oBarkley,"dialog","I can't open the door, it's locked.",1);
}
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=2) {
sCinema(oBarkley,"dialog","That ain't gonna happen.",1);
sCinema(oBarkley,"code",cine_0396);
} else {
sCinema(oBarkley,"code",cine_0006);
}
}
