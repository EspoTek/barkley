global.dialog=1;
hhh=sOvar(object_index,-1);
if (sOvar(oIntro22,-1)=2) { //won arena
sCinema(oBarkley,"dialog","Guy:\\Saw your fight against Kevin Garnett. Did him in good.");
sCinema(oBarkley,"dialog","He wasn't too tough. How'd you do?",1);
sCinema(oBarkley,"dialog","Guy:\\I got beat a couple rounds in, but damn man, it's a good thing I didn't end up against you. I hate to say it but your tactics are unlimited.");
sCinema(oBarkley,"dialog","Well if you can't slam with the best, then jam with the rest.",1);
} else if (hhh=-1) {
sOvar(object_index,1);
sCinema(oBarkley,"dialog","Guy:\\I trained all year for the Festival Tournament, I have to win. I don't care what they say about Kevin Garnett, he looks like a real scrub.");
sCinema(oBarkley,"dialog","I don't know. I met with Kevin on the b-ball court a few times and he sure knows how to hold his own.",1);
sCinema(oBarkley,"dialog","Guy:\\Yeah, well this ain't b-ball. I'm gonna kick his ass and get the prize.");
sCinema(oBarkley,"dialog","Good luck with that, I guess.",1);
} else if (hhh=1) {
sCinema(oBarkley,"dialog","Guy:\\Kevin Garnett's got nothing on me. No way am I losing to that chump.");
}
