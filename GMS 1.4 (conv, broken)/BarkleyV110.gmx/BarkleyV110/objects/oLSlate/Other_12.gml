if (stage=0) {
if (global.selected=0) {
sCinema(oFollower2,"dialog","I sense great history behind this rock. I imagine it's a staple of the culture around here.",1);
sCinema(oBarkley,"dialog","Yeah, but I can't make out anything in this rock. It's just a bunch of figures in some kind of fight.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=1) {
sCinema(oBarkley,"dialog","I can't see anything I could use on the rock face.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=2) {
sCinema(oBarkley,"dialog","There's nothing to take.",1);
sCinema(oBarkley,"code",cine_0396);
} else {
sCinema(oBarkley,"code",cine_0006);
}
}
