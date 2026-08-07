global.dialog=1;
if (global.selected=0 && turn=0) {
if (sItem("goldcheck",30)) {
sItem("gold",-30);
sCinema(oBarkley,"tint",c_black,0.5);
sCinema(oBarkley,"wait",0.5);
sCinema(oBarkley,"tint",c_black,1);
sCinema(oBarkley,"code",cine_0392);
sCinema(oBarkley,"wait",2);
sCinema(oBarkley,"tint",c_white,0);
sCinema(oBarkley,"dialog","All VP, BP, and conditions restored!");
} else {
sCinema(oBarkley,"dialog","Damnit... Don't got enough Neo-Shekles to pay...",1);
}
} else if (global.selected=0 && turn=1) {
sCinema(oBarkley,"tint",c_black,0.5);
sCinema(oBarkley,"wait",0.5);
sCinema(oBarkley,"tint",c_black,1);
sCinema(oBarkley,"code",cine_0392);
sCinema(oBarkley,"wait",1);
if (sOvar(oIntro19,-1)=-1) {
sCinema(oBarkley,"code",cine_0422,1);
sCinema(oBarkley,"effect","fadein",3);
global.roz=RomProtoDream;
} else {
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"tint",c_white,0);
sCinema(oBarkley,"dialog","All VP, BP, and conditions restored!");
}
} else if (global.selected=1 && turn=1) {
sCinema(oBarkley,"dialog","Marlon:\\Well, come back whenever you want.");
}

