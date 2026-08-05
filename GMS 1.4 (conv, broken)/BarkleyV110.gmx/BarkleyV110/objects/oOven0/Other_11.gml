global.dialog=1;
if (global.treasure[0]=0) {
global.treasure[0]=1;
sCinema(oBarkley,"dialog","Hmm, let's see what's cooking in the oven... A delicious ecto cooler.");
sCinema(oBarkley,"item","Ecto Cooler",1);
} else {
sCinema(oBarkley,"dialog","Nothing in here...");
}
