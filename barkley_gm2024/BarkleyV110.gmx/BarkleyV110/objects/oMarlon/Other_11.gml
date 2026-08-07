global.dialog=1;
if (sOvar(oSign1,-1)!=2) {
sCinema(oBarkley,"dialog","Marlon:\\This isn't a hotel or anything but you can stay as long as you pay.");
sCinema(oBarkley,"dialog","Stay at inn? You have $"+string(global.gold)+".",0,"Pay $30 to stay.","No dice.");
sCinema(oBarkley,"code",cine_0423);
turn=0;
} else {
sCinema(oBarkley,"dialog","Marlon:\\There's a room in the back if you want it. I guess we owe you for getting rid of the Ghost Dad.");
sCinema(oBarkley,"dialog","Rest?",0,"Yeah.","Nah.");
sCinema(oBarkley,"code",cine_0423);
turn=1;
}
