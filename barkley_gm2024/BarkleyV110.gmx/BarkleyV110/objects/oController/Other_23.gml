if (global.selected=0) {
global.scheme[28]=oBarkley.x;
global.scheme[29]=oBarkley.y;
global.scheme[30]=room;
sA("stopall");
sItem("Dimension Whistle",-1);
sCinema(oBarkley,"catchup");
sCinema(oBarkley,"dialog","Alright, here goes...",1);
sCinema(oBarkley,"code",cine_0031);
sCinema(oBarkley,"code",cine_0032);
sCinema(oBarkley,"code",cine_0033);
sCinema(oFollower0,"wait",15);
sCinema(oBarkley,"dialog","Huh?",1);
sCinema(oFollower0,"dialog","Charles, look out!",1);
sCinema(oBarkley,"code",cine_0034);
} else {
sCinema(oBarkley,"dialog","Maybe some other time.",1);
}
