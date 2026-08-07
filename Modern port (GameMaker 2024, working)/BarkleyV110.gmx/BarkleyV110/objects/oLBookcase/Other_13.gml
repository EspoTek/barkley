if (global.selected=3) {
sCinema(oBarkley,"code",cine_0396);
exit;
}
pull[3]=pull[2];
pull[2]=pull[1];
pull[1]=pull[0];
pull[0]=global.selected+1;
if (pull[0]=2 && pull[1]=3 && pull[2]=2 && pull[3]=1) { //reverse
sCinema(oBarkley,"move","down",6);
sCinema(oBarkley,"catchup");
sCinema(oBarkley,"code",cine_0405);
repeat (16) { sCinema(oBarkley,"code",cine_0406); sCinema(oBarkley,"wait",.1); }
sCinema(oBarkley,"dialog","Hey, there's a door. That's gotta be our way out of here.",1);
sOvar(object_index,2);
} else {
sCinema(oBarkley,"dialog","Pulled book " + string(global.selected+1) + ".");
sCinema(oBarkley,"dialog","Pull which book?",0,"1","2","3","Leave.");
sCinema(oBarkley,"code",cine_0407);
}
