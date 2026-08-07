if (stage=0) {
if (global.selected=0) {
if (sOvar(oMack,-1)=-1) {
sCinema(oBarkley,"dialog","Huh? The door's locked. It has two keyholes, but it looks like each keyhole is the same.",1);
} else {
sCinema(oBarkley,"dialog","It's locked. Mack told me I will also need the Immaculate Rod if I want to enter.",1);
}
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=1) {
if (sItem("Immaculate Rod")>0 && sItem("Orb Sceptre")>0) {
sOvar(object_index,1);
sound_play(mOpen);
sItem("Orb Sceptre",-1); sItem("Immaculate Rod",-1); sItem("Sugar Counter",-1);
sCinema(oBarkley,"dialog","Whoa, both keys broke as I opened the door. Hey, and where did the sugar counter go? I must have lost it.",1);
sCinema(oFollower2,"dialog","It's a good thing we no longer needed those items.",1);
sCinema(oBarkley,"dialog","Yeah. At least we can finally see Yelmirb now.",1);
instance_destroy();
} else if (sItem("Orb Sceptre")>0) {
sCinema(oFollower2,"dialog","We promised to kill Raffleson. We need to heed the warning of Jenkins, or risk danger to Yelmirb.",1);
sCinema(oBarkley,"dialog","Yeah... I guess you're right. He's probably at his house.",1);
} else {
if (sOvar(oMack,-1)=-1) {
sCinema(oBarkley,"dialog","I can't go inside, it's locked.",1);
} else {
sCinema(oBarkley,"dialog","I need the Immaculate Rod if I want to enter.",1);
}
sCinema(oBarkley,"code",cine_0396);
}
} else if (global.selected=2) {
sCinema(oBarkley,"dialog","Without tools I can't dismantle and carry the door with me.",1);
sCinema(oBarkley,"code",cine_0396);
} else {
sCinema(oBarkley,"code",cine_0006);
}
}
