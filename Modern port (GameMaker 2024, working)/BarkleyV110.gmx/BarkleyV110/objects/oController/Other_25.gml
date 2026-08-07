//Mark give final gun
if (global.selected=0) {
sOvar(oMark,2);
sItem("F.I.N.A.L. G.U.N.",-1)
sCinema(oBarkley,"dialog","Mark:\\Yes... The power... The mystique... I shall not soon forget this, bringer of the F.I.N.A.L. G.U.N. You will undoubtedly go in the history books for this.");
sCinema(oBarkley,"dialog","What about my reward?",1);
sCinema(oBarkley,"dialog","Mark:\\Oh, how could I forget? Here it is.");
sCinema(oBarkley,"item","Gun's Sticker",1);
sCinema(oBarkley,"dialog","Mark:\\I won this at the 2038 Gun'sCon for the best gun's collection. It's all yours now.");
sCinema(oBarkley,"dialog","What.",1);
sCinema(oBarkley,"dialog","Mark:\\Treasure it. That is the closest you will ever come to becoming a true guns'braster...");
sCinema(oBarkley,"dialog","Mark:\\I shall make my leave now.");
sCinema(oBarkley,"tint",c_black,1);
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"code",cine_0029);
sCinema(oBarkley,"tint",c_black,0);
sCinema(oFollower0,"dialog","Let's never mention this again...",1);
} else {
instance_create(floor(__view_get( e__VW.XView, 0 )),floor(__view_get( e__VW.YView, 0 )),oStartmenu);
with (oStartmenu) sItemShow("global.item_id",0,0,2,2);
}

