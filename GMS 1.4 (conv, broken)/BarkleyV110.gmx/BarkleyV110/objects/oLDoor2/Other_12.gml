if (stage=0) {
if (global.selected=0) {
sCinema(oBarkley,"dialog","I can't open the door because it's locked. Looks like you can lock this door from the inside and outside.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=1) {
if (sItem("Desk Key")>0) {
sCinema(oBarkley,"dialog","I'll use the key I found in the desk... Huh? It doesn't fit. Guess I can't use it here.",1);
} else {
sCinema(oBarkley,"dialog","I can't open it, it's locked.",1);
}
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=2) {
sCinema(oBarkley,"dialog","You can't take a door.",1);
sCinema(oBarkley,"code",cine_0396);
} else {
sCinema(oBarkley,"code",cine_0006);
}
}
