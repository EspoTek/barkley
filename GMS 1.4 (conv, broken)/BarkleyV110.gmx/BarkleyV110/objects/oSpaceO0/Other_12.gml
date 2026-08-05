//Choose
if (global.selected=0) {
if (stage=0) {
stage=1;
sCinema(oCyberdwarf,"dialog","This is it, Barkley. There's no going back. Are you sure about this?",1);
sCinema(oBarkley,"dialog","Really go into the ship?",0,"Yes","No");
sCinema(oBarkley,"code",cine_0469);
} else {
sCinema(oCyberdwarf,"dialog","I hope you're sure about this, Barkley...",1);
sCinema(oBarkley,"effect","fadein",3);
global.roz=RomCybership;
}
} else {
sCinema(oCyberdwarf,"dialog","Alright, we can come back when we're ready but it'll have to be soon.",1);
sCinema(oBarkley,"move","right");
sCinema(oBarkley,"move","right");
}
