if (sOvar(oLiberty,-1)<0) {
if (global.selected=0) {
sOvar(object_index,2);
sCinema(oBarkley,"catchup");
sCinema(oBarkley,"code",cine_0451);
sCinema(oBarkley,"dialog","Harriet Tubman:\\Alright, board up on the subway. Old Harriet'll take you where you wanna go...");
sCinema(oBarkley,"code",cine_0263);
sCinema(oBarkley,"effect","fadein",3);
global.roz=RomSubwayCar0;
} else if (global.selected=1) {
sOvar(object_index,1);
sCinema(oBarkley,"dialog","Harriet Tubman:\\That's fine. Nobody comes down here anyway.");
}
} else {
if (global.selected=0) {
sCinema(oBarkley,"dialog","Harriet Tubman:\\Get on board. We'll be taking off in a minute...");
sCinema(oBarkley,"code",cine_0263);
sCinema(oBarkley,"effect","fadein",3);
global.roz=RomSubwayCar0;
} else {
sCinema(oBarkley,"dialog","Harriet Tubman:\\Well hurry up. I'm not going to wait all day for you.");
sCinema(oBarkley,"dialog","Yeah, we'll be fast, don't worry.",1);
}
}
