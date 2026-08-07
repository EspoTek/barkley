global.dialog=1;
if (sOvar(oSuitToll,-1)=2) { //paid
sCinema(oBarkley,"dialog","Suit:\\This ladder will take you down.");
sCinema(object_index,"move","right");
} else { //killed
sCinema(oBarkley,"dialog","Suit:\\Go ahead sir. Don't mind me.");
sCinema(object_index,"move","right");
}
