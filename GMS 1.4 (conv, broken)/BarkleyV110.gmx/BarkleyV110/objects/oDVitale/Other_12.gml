if (global.selected=0) {
if (sItem("goldcheck",50)) {
sOvar(object_index,1);
//enough money
sItem("gold",-50);
sCinema(oBarkley,"dialog","Here's 50 neo-shekels.",1);
sCinema(oDVitale,"dialog","Awesome baby. This is just dandy. Did I ever tell you how great you are? Gonna hit keno later, it's gonna be a blast!",1);
} else {
sOvar(object_index,2);
//not enough
sCinema(oBarkley,"dialog","I don't have enough neo-shekels to give you.",1);
sCinema(oDVitale,"dialog","What? You gotta be fucking kidding me, baby. You, a famous BBall star and you ain't got nothing to show for? Just go away, I don't have anything awesome to say to you baby.",1);
sCinema(oBarkley,"dialog","W-what? I thought we were cool?",1);
sCinema(oDVitale,"dialog","No money no funny, baby, you get the idea. Just scram pal, you're wasting my breath.",1);
} 
} else if (global.selected=1) {
sOvar(object_index,2);
////dont pay
sCinema(oBarkley,"dialog","Sorry Dick, I can't spare any neo-shekels. I need them.",1);
sCinema(oDVitale,"dialog","What? Can't even spare some money for an old friend? You need to get a fucking clue pal, what means more to you, baby? Neo-shekels or an old pal? Guess I know where you stand huh? Guess I know where you stand!",1);
sCinema(oBarkley,"dialog","W-what? I thought we were cool?",1);
sCinema(oDVitale,"dialog","No money no funny, baby, you get the idea. Just scram pal, you're wasting my breath.",1);
}
