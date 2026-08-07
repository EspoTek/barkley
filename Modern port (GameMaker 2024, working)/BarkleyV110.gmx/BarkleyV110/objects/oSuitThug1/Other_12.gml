if (global.selected=0) {
sBoss("oBBodyguard0");
sPos("save");
sCinema(oBarkley,"dialog","I'm here for Allard. Outta my way sucka.",1);
sCinema(oBarkley,"dialog","Suit:\\It's been pretty slow recently. Thanks for this.");
sOvar(oEvent13b,3.2);
sCinema(oBarkley,"code",cine_0475);
sCinema(oBarkley,"code",cine_0006); //mirror battle in other thug
} else if (global.selected=1) {
//Nothing
sCinema(oBarkley,"dialog","Suit:\\Then don't bother me.");
} else {
//Rufus?
sCinema(oBarkley,"dialog","Are you rufus?",1);
sCinema(oBarkley,"dialog","Suit:\\No.");
sCinema(oBarkley,"dialog","You know where I could find him?",1);
sCinema(oBarkley,"dialog","Suit:\\I'm not a goddamn secretary. Take your questions somewhere else.");
}
