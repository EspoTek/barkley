if (stage=0) {
if (global.selected=0) {
sCinema(oBarkley,"dialog","Nothing but crumbs and stains are on the table.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=1) {
sCinema(oBarkley,"dialog","I'll lay on the table and see if anything happens.",1);
sCinema(oBarkley,"code",cine_0412);
sCinema(oBarkley,"wait",2);
sCinema(oBarkley,"code",cine_0413);
sCinema(oBarkley,"dialog","At least I tried.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=2) {
sCinema(oBarkley,"dialog","I doubt I'll need a table anytime soon.",1);
sCinema(oBarkley,"code",cine_0396);
} else {
sCinema(oBarkley,"code",cine_0006);
}
}
