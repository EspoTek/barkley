if (room=RomCuchHoop0 || room=RomCuchBarkley0 || room=RomCuchCyber0 || room=RomCuchBalthios0 || room=RomCuchCorridor) {
with (oStartmenu) instance_destroy();
sCinema(oBarkley,"dialog","I shouldn't use this now...",1);
} else {
with (oStartmenu) instance_destroy();
sCinema(oBarkley,"dialog","I don't think this is going to work.",1);
sCinema(oFollower0,"dialog","Give it a toot and let's see what happens.",1);
sCinema(oBarkley,"dialog","Toot the Dimension Whistle?",0,"Yeah","Nah");
sCinema(oBarkley,"code",cine_0030);
}
