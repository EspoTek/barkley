global.dialog=1;
if (sOvar(oEventc0,-1)=-1) {
sCinema(oBarkley,"dialog","Jamal Bloodguzzle:\\Well, have you reconsidered my proposal? Will you help to negotiate the Declaration of Duergar Rights?",0);
sCinema(oBarkley,"dialog","Mediate for civil rights negotiation?",0,"Yeah.","Nah.");
sCinema(oBarkley,"code",cine_0394);
} else if (sOvar(oEventc0,-1)=2) { //genie win
sCinema(oBarkley,"dialog","Jamal Bloodguzzle:\\The chains of oppression have tightened around us today, Charles Barkley. Are you the one to blame? Perhaps only history will hold the true answer.",0);
} else if (sOvar(oEventc0,-1)=1) { //duergar win
sCinema(oBarkley,"dialog","Jamal Bloodguzzle:\\Take care of the Shrekmono, Barkley. It is my most treasured posession, and now it is yours.",0);
sCinema(oBarkley,"code",cine_0141);
sCinema(oBarkley,"wait",0.5);
sCinema(oBarkley,"cond",cine_0142);
} else { //no one wins
sCinema(oBarkley,"dialog","Jamal Bloodguzzle:\\Although I can't say I'm pleased, Barkley, I do believe that today was a step forward in the Duergars' quest for civil rights. Someday, my friend, we will be able to hoard troves of gemstones as we once did but until that day, we must keep fighting.",0);
}
