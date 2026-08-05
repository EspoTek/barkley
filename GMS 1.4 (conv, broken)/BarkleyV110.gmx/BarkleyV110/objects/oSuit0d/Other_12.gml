global.dialog=1;
sOvar(oSuit0d,2);
if (global.selected=0) { //yes
sCinema(oBarkley,"dialog","Square-Enix-Goya Representative:\\Excellent. Here are the Neo-Shekels as promised.");
sItem("F.I.N.A.L. G.U.N.",-1);
sItem("gold",2500); 
sCinema(oBarkley,"dialog","Received 2500 Neo-Shekels!");
sCinema(oBarkley,"dialog","Square-Enix-Goya Representative:\\Square-Enix-Goya appreciates your patronage.");
if (place_meeting(x,y+16,oBarkley)) {
repeat(2) sCinema(oSuit0d,"move","right");
}
sCinema(oBarkley,"look","down");
repeat (10) sCinema(oSuit0d,"move","down");
sCinema(oBarkley,"code",cine_0470);
sCinema(oBarkley,"code",cine_0006);
} else if (global.selected=1) { //no more money
sBoss("Goya");
sPos("save");
sCinema(oBarkley,"dialog","Square-Enix-Goya Representative:\\Square-Enix-Goya does not take kindly to your attitude. It is apparent you can no longer be trusted.");
sCinema(oBarkley,"dialog","Tough luck, chump. Pay up or shut up.",1);
sCinema(oBarkley,"dialog","Square-Enix-Goya Representative:\\No. We shall take it by force.");
sCinema(oBarkley,"code",cine_0471);
sCinema(oBarkley,"code",cine_0006);
sOvar(oSuit0d,2.2);
} else { //no
if (turn=0) {
sCinema(oBarkley,"dialog","Square-Enix-Goya Representative:\\You fail to understand that I cannot simply let you leave with the F.I.N.A.L. G.U.N.");
sCinema(oBarkley,"dialog","Huh? I don't want to give it to you.",1);
sCinema(oBarkley,"dialog","Square-Enix-Goya Representative:\\We had a deal. You have an obligation to hand it over to us, in exchange for $2500.");
sCinema(oBarkley,"dialog","Look chump, I changed my mind. Deal with it.",1);
sCinema(oBarkley,"dialog","Square-Enix-Goya Representative:\\I will ask again... Remember that Square-Enix-Goya frowns upon those who do not fulfill business transactions.");
sCinema(oBarkley,"dialog","Choose:",0,"Fine, take the gatdam thing.","I want $5,000, then.","Over my dead body, chump.");
sCinema(oBarkley,"code",cine_0472);
turn=1;
} else {
sBoss("Goya");
sPos("save");
sCinema(oBarkley,"dialog","Square-Enix-Goya Representative:\\Very well. You will lose your life for your insolence.");
sCinema(oBarkley,"code",cine_0471);
sCinema(oBarkley,"code",cine_0006);
sOvar(oSuit0d,2.2);
}
}
