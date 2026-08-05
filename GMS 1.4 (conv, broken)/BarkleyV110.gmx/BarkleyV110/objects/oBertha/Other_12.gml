if (global.selected=0) { //oIntro26
sCinema(oBarkley,"dialog","Yeah, that sounds good.",1);
sFullheal();
sCinema(oBarkley,"tint",c_black,1);
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"tint",c_black,0);
if (sOvar(oIntro26,-1)<2) {
sCinema(oBarkley,"dialog","Bertha:\\You're heading to Cuchulainn's Tomb, aren't you?");
sCinema(oBarkley,"dialog","Yeah, we're looking for manufacted jamicite.",1);
}
sCinema(oBarkley,"dialog","Bertha:\\Cuchulainn's Tomb is just north of here. It's a dangerous place and every once in a while we hear wails and moans coming from it. We try to stay away from it but if you absolutely have to go... I'd talk to Bert before you leave to stock up on supplies.");
sCinema(oBarkley,"dialog","Alright, thanks a lot.",1);
sCinema(oBarkley,"dialog","Bertha:\\You be careful... don't end up like one of those bainshees.");
} else {
sCinema(oBarkley,"dialog","Bertha:\\Suit yourself. If you ever need somewhere to rest, you've always got a place here.");
}
