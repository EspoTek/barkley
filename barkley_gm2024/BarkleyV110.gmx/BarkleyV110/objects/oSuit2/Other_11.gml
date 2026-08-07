global.dialog=1;
if (sOvar(oSuitRufus,-1)=2 && sOvar(object_index,-1)=-1) {
sOvar(object_index,1);
sCinema(oBarkley,"dialog","Are you Rufus?",1);
sCinema(oBarkley,"dialog","Suit:\\Am I Rufus? Rufus is a piece of shit who couldn't handle gate duty? Do I look like a piece of shit who couldn't handle gate duty to you?");
sCinema(oBalthios,"dialog","Don't answer, Charles.",1);
sCinema(oBarkley,"dialog","...",1);
} else {
sCinema(oBarkley,"dialog","Suit:\\Get out of my face, gnat.");
}
