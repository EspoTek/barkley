//last train cin
if (room=RomSubwayCar2) {
with (oPlayer) t=3;
oSubwaydoor.image_index=1; oSubwaydoor.image_speed=0;
with (oFollower) x=-999;
oCyberdwarf.visible=0;
oBalthios.visible=0;
oCyberdwarf.x=oCyberdwarf.xstart-4;
oBalthios.x=oBalthios.xstart-4;
with (oPlayer) { solid=0; }
oSoldier0.x=-999;
oSoldier1.x=-999;
sOvar(oTubman,3);
sOvar(object_index,5);
sCinema(oBarkley,"wait",.5);
sCinema(oBarkley,"code",cine_0264);
repeat (3) sCinema(oBarkley,"move","left",6);
sCinema(oBarkley,"move","up",6);
sCinema(oBarkley,"code",cine_0265);
repeat (3) sCinema(oBalthios,"move","left",6);
sCinema(oBalthios,"move","down",6);
sCinema(oBarkley,"face","right");
sCinema(oBalthios,"face","right");
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"code",cine_0266);
sCinema(oBarkley,"code",cine_0267);
sCinema(oBarkley,"wait",.1);
sCinema(oCyberdwarf,"jump","start");
repeat(2) sCinema(oCyberdwarf,"move","left",6);
sCinema(oBarkley,"code",cine_0268);
sCinema(oBarkley,"tint",c_red,0.5);
sCinema(oCyberdwarf,"move","left",6);
sCinema(oBarkley,"tint",c_red,0);
sCinema(oCyberdwarf,"move","left",6);
sCinema(oCyberdwarf,"jump","end");
sCinema(oBarkley,"wait",1);
sCinema(oCyberdwarf,"face","right");
sCinema(oBarkley,"wait",1);
sCinema(oCyberdwarf,"dialog","It worked.",1);
sCinema(oBarkley,"dialog","And just in time, too. Let's go tell Harriet what happened. Oh, and Cyberdwarf... Thanks.",1);
sCinema(oBarkley,"effect","fadein",3);
global.roz=RomSubwayBoard1;
}
