global.dialog=1;
if (global.scheme[1]=0) {
global.scheme[1]=1;
sCinema(oBarkley,"dialog","Wrinkled Woman:\\The other side's warmer.");
sCinema(oBarkley,"wait",0.7);
sCinema(oBarkley,"dialog","What's that supposed to mean?",1);
sCinema(oBarkley,"dialog","Wrinkled Woman:\\I mean the heating ducts are on the other side. Nowadays, the only reason people come here is to get away from the cold, it seems. Definitely not for the teachings of Clispaeth, at any rate. Sometimes I feel like the last believer on Earth. If only they would let him into their hearts... what do you think, son?");
sCinema(oBarkley,"wait",0.7);
sCinema(oBarkley,"dialog","About what? Clispaeth? I couldn't care less. This rotten city is hell enough to deal with. I don't got the time to worry about another one waiting for me down the road. I got a son to take care of. I look out for him. I don't got the time to give a damn about your God.",1);
sCinema(oBarkley,"dialog","Wrinkled Woman:\\That's... that's blasphemy! Clispaeth is a loving God, I assure you, but I still think it unwise to tempt his wrath.");
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"dialog","Then so be it. If Clispaeth exists, he's already taken enough from me. I'd like to see him try for any more.",1);
} else if (global.scheme[1]=1) {
global.scheme[1]=2;
sCinema(oBarkley,"dialog","Wrinkled Woman:\\You really should watch the way you speak to Father Bird, you know. He's a great man. This church would've been demolished by now if it weren't for him. Sure we don't have many patrons, but I'm sure even you wouldn't want to see our homeless out on the streets.  Without Bird, this place would have surely been lost.");
} else if (global.scheme[1]=2) {
sCinema(oBarkley,"dialog","Wrinkled Woman:\\It's never too late to let Clispaeth's light into your heart.");
sCinema(oBarkley,"dialog","Try it on the bums, lady. Your God's got nothing for me.",1);
}
