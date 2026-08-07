//Choices
if (global.selected=1) { //explode
sOvar(object_index,0);
sCinema(oBarkley,"dialog","Do it. Pull that switch. Disable that coupling.",1);
sCinema(oCyberdwarf,"dialog","Here it goes...",1);
sCinema(oBarkley,"tint",c_white,0.5);
sCinema(oBarkley,"code",cine_0293);
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"dialog","All:\\WAAAAAAAAAAAAAAAAHHHHHHHHH!!!");
sCinema(oBarkley,"code",cine_0294);
sCinema(oBarkley,"tint",c_white,1);
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"effect","fadein",3);
global.roz=RomGameover;
} else { //pass
if (state=0) {
sCinema(oBarkley,"dialog","Nope. That's the left switch, for the left coupling. That's not the correct coupling.",1);
sCinema(oCyberdwarf,"move","right");
sCinema(oCyberdwarf,"face","up");
sCinema(oBarkley,"wait",.5);
sCinema(oCyberdwarf,"dialog","How about this switch Barkley? Will this switch disable the correct coupling? Remember, it's the [rightmost coupling] that we need to disable. Not the other couplings. So is this the correct switch for the coupling?",1);
sCinema(oBarkley,"dialog","Choose:",0,"Nope, that isn't the coupling.","Yep, that's the right coupling.");
sCinema(oBarkley,"code",cine_0280);
} else if (state=1) {
sCinema(oBarkley,"dialog","Nope. That's the middle switch, for the middle coupling. That's not the right coupling.",1);
sCinema(oCyberdwarf,"move","right");
sCinema(oCyberdwarf,"face","up");
sCinema(oBarkley,"wait",.5);
sCinema(oCyberdwarf,"dialog","Here we are. This must be the switch for our coupling. This will disconnect this car from the rest of the train, separating us from the bomb. You two get to the next car. I'll come after you the moment I flip the switch.",1);
sCinema(oBalthios,"dialog","We can't leave you here with the bomb, Cyberdwarf.",1);
sCinema(oBarkley,"dialog","He knows what he's doing, Balthios. Let's go.",1);
sCinema(oBarkley,"effect","fadein",3);
global.roz=RomSubwayCar2;
}
state+=1;
}
