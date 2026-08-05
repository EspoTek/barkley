if (global.selected=0) {
if (sItem("goldcheck",5000)) {
//enough money
sOvar(object_index,2);
sItem("gold",-5000);
sCinema(oBarkley,"dialog","Suit:\\Excellent decision. I'll take that and you can be on your way.");
sCinema(oBarkley,"dialog","Suit takes 5000 neo-shekels.");
sCinema(oSuitToll,"move","up");
sCinema(oSuitToll,"move","up");
sCinema(oSuitToll,"move","right");
sCinema(oSuitToll,"face","left");
} else {
//not enough
sCinema(oBarkley,"dialog","I don't have enough...",1);
sCinema(oBarkley,"dialog","Suit:\\Then you're not getting through. Come by when you're worth something. Dr. Allard makes no exceptions.");
} 
} else if (global.selected=1) {
////dont pay
sCinema(oBarkley,"dialog","$5000? You must be out of your mind, punk.",1);
sCinema(oBarkley,"dialog","Suit:\\That's the price. $5000 or you're not getting through. Dr. Allard's rules.");
} else if (global.selected=2+w) {
////bust through
sBoss("oBBodyguard1");
sPos("save");
sCinema(oBarkley,"dialog","Suit:\\Hahahahaha!\\...\\Oh. You're not joking? Let's get to it then.");
sCinema(oBarkley,"code",cine_0477);
sCinema(oBarkley,"code",cine_0006);
sOvar(object_index,3.3);
} else {
////are rufus
sCinema(oBarkley,"dialog","Suit:\\Hahaha. Rufus is out patrolling some hallway somewhere. Allard busted him down some ranks when he couldn't do his job. A lot of pieces of shit like you try getting through here without paying. Rufus couldn't handle them. I can.");
}
