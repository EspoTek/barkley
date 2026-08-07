if (global.selected=1) { //leave
sOvar(object_index,1);
sCinema(oBarkley,"dialog","Carmelo Anthony:\\You enjoy your trip, Barkley?");
sCinema(oBarkley,"dialog","Yeah... yeah I did. I only wish that I could stay here forever. For a while, I didn't think paradise really existed but... but not anymore.",1);
sCinema(oBarkley,"dialog","Carmelo Anthony:\\I just want you to know, man, that... none of us spite you for what happened in the past. You wanted to take the game to the next level and the world just wasn't ready. We know you're not one of the bad guys.");
sCinema(oBarkley,"dialog","Thanks, Melo. That... that really means a lot to me.",1);
sCinema(oBarkley,"dialog","Carmelo Anthony:\\Take care and good luck, Barkley. You'll need it.");
sCinema(oBarkley,"effect","fadein",3);
global.roz=RomDimensionWarp;
} else if (global.selected=0) { //stay
sCinema(oBarkley,"dialog","Carmelo Anthony:\\Take your time and make sure you see everything there is to see here. You won't be returning to the B-Ball Dimension for a long time.");
}
