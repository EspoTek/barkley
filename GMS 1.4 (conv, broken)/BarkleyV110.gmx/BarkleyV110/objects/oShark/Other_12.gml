global.dialog=1;
if (global.selected=0) {
if (sItem("goldcheck",25)) {
sItem("gold",-25);
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
}
