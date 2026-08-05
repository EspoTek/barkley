global.dialog=1;
//-1 is null,1=talked=gateblocked,2=paid,3=killed
if (sOvar(object_index,-1)=2) {
sCinema(oBarkley,"dialog","Suit:\\How about you make your $5000 worth it and don't come back for a while?");
exit;
} else if (sOvar(object_index,-1)=3) {
sCinema(oBarkley,"dialog","Suit:\\Oh god... Allard's gonna fucking kill me...");
exit;
}
if (sOvar(object_index,-1)=-1) {
sOvar(object_index,1);
sCinema(oBarkley,"dialog","Suit:\\Never seen you before. Dr. Allard charges $5000 for a trip down this ladder. There ain't anybody that comes here who doesn't wanna get past me. And there ain't nobody that does get past me without a lighter wallet. It's a decent situation we have going here. It's gone without a hitch for a while now. So. $5000 gets you a round trip. Down the ladder once, up the ladder once. How's that sound?");
sCinema(oBarkley,"dialog","What! $5000 is an outrageous price, there's gotta be another way down there...",1);
sCinema(oBarkley,"dialog","Suit:\\Not a chance. Pay up or shut up.");
} else {
sCinema(oBarkley,"dialog","Suit:\\Changed your mind?");
}
w=0;
ol[0]="0";
ol[1]="0";
if (sOvar(oSuitRufus,-1)=2) { ol[w]="Are you Rufus?"; w+=1; }
if (sOvar(oIntro15,-1)=1) { ol[w]="Try and bust through"; }
sCinema(oBarkley,"dialog","Choose:",0,"Pay toll of $5000.","Don't pay.",ol[0],ol[1]);
sCinema(oSuitToll,"code",cine_0478);
