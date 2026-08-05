global.dialog=1;
www=sOvar(object_index,-1);
if (www=-1) {
sOvar(object_index,1);
sCinema(oHundley,"dialog","Welcome to Hundley's Casino.",1);
sCinema(oBarkley,"dialog","Huh? Casino?",1);
sCinema(oHundley,"dialog","Why don't you try your luck on one of our games?",1);
sCinema(oBarkley,"dialog","I don't see any games--",1);
sCinema(oHundley,"dialog","Our most popular game is called \"Bones\". Care to play?",1);
sCinema(oBarkley,"dialog","Choose.",0,"I guess so.","No way pal.");
sCinema(oBarkley,"code",cine_0152);
} else if (www=1) {
sCinema(oHundley,"dialog","Crawling back to Hundley's Casino again, I see. Want to play again?",1);
sCinema(oBarkley,"dialog","Choose.",0,"I guess so.","No way pal.");
sCinema(oBarkley,"code",cine_0152);
} else {
sCinema(oHundley,"dialog","...",1);
sCinema(oBarkley,"dialog","Don't even look at me, chump.",1);
}
