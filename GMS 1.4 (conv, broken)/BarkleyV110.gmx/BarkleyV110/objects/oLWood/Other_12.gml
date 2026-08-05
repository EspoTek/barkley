if (stage=0) {
if (global.selected=0) {
sCinema(oBarkley,"dialog","All this wood is rotten. Doesn't look very useful.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=1) {
global.char_chp[0]=max(1,global.char_chp[0]-1);
sCinema(oBarkley,"dialog","I guess I'll grab some of the wood and see what happens.",1);
sCinema(oBarkley,"code",cine_0153);
sCinema(oBarkley,"dialog","Suffered 1 VP of damage!");
sCinema(oBarkley,"code",cine_0074);
sCinema(oBarkley,"dialog","Gatdam! I got a splinter.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=2) {
sCinema(oBarkley,"dialog","I don't need rotten wood.",1);
} else {
sCinema(oBarkley,"code",cine_0006);
}
}
