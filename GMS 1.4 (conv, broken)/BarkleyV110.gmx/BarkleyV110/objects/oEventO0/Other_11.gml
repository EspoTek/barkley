if (sOvar(object_index,-1)=1) exit;
global.dialog=1;
oBarkley.move="";
sOvar(object_index,1);
if (sOvar(oIntro32,-1)!=3) {
sCinema(oBarkley,"dialog","Wait, this is the way out of town. We went the wrong way. Gatdam...",1);
repeat (2) sCinema(oBarkley,"move","up");
sCinema(oBarkley,"code",cine_0134);
} else {
sCinema(oBarkley,"dialog","Enter the world map?",0,"Yes","No");
sCinema(oBarkley,"code",cine_0135);
}
