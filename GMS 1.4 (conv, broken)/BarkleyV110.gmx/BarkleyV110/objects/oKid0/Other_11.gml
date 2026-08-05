global.dialog=1;
if (global.scheme[8]=0) {
global.scheme[8]=1;
sCinema(oBarkley,"dialog","Kid, what are you doing out here at night? You should be at home.",1);
sCinema(oBarkley,"dialog","Kid:\\...");
sCinema(oBarkley,"dialog","Kid, can you hear me? You should be at home.",1);
sCinema(oBarkley,"dialog","Kid:\\...");
sCinema(oBarkley,"dialog","I'm uh, I'm sorry kid.",1);
sCinema(oBarkley,"dialog","Give the kid a neo-shekel?",0,"Yes","No");
sCinema1(oBarkley,"dialog","Get something to eat, kid.",1);
sCinema2(oBarkley,"dialog","It's called survival of the fittest. If you can't slam with the best, then jam with the rest.",1);
sCinema(oBarkley,"code",cine_0403);
sCinema(oBarkley,"cond",cine_0404);
} else {
sCinema(oBarkley,"dialog","I got nothing for you, kid.",1);
}
