if (global.selected=0) {
sCinema(oBarkley,"dialog","Attendant:\\Alright. Please come back if you'd like to register for the Festival Tournament.");
} else {
sParty("del",0); sParty("del",1); sParty("del",3); sParty("del",4); 
sParty("add",0);
sOvar(object_index,1);
sDialog("set",1,"top");
sCinema(oBarkley,"dialog","Attendant:\\Alright. Please write your name here...");
repeat (10) sCinema(oDGarnett,"move","down");
repeat (2) sCinema(oDGarnett,"move","right");
sCinema(oDGarnett,"face","down");
sCinema(oDGarnett,"wait",1.3);
sCinema(oDGarnett,"dialog","Heh, well if it isn't Charles Barkley. Come to take away my title of arena champion like you did my game?",1);
sCinema(oBarkley,"face","up");
sCinema(oBarkley,"dialog","Kevin! Hey man, long time no see! I hear you're the arena champion or something now, huh?",1);
sCinema(oDGarnett,"dialog","Heh, what's it to you, swine?",1);
sCinema(oBarkley,"dialog","What?",1);
sCinema(oDGarnett,"dialog","I've been waiting and training for this moment for so long, the day I would finally be able to kill Charles Barkley on the battlefield. Oh yes, I've waited for what felt like an eternity training my body to become the ultimate killing machine. I've sacrificed everything to become arena champion just for the chance of revenge. I will defeat you, Charles Barkley, and my quest for revenge will be over. I will have redeemed b-ball!",1);
sCinema(oBarkley,"dialog","So you're kind of a dick now, huh?",1);
sCinema(oDGarnett,"dialog","Mark my words, Barkley. I will rend you from limb to limb and drink your blood. A Chaos Dunk is too easy a punishment for you.",1);
repeat (2) sCinema(oDGarnett,"move","left");
repeat (10) sCinema(oDGarnett,"move","up");
sCinema(oDGarnett,"face","right");
sCinema(oBarkley,"dialog","Man, he's really changed.",1);
sCinema(oBarkley,"code",cine_0044);
sCinema(oBarkley,"dialog","Attendant:\\That sound means it's time for you to enter the arena. Good luck, Mr. Barkley.");
sCinema(oFollower3,"dialog","Good luck, dad! I'll be rooting for you!",1);
sCinema(oFollower0,"dialog","As will I, Barkley. Do your best out there.",1);
sCinema(oFollower2,"dialog","Don't get yourself killed, Charles.",1);
sCinema(oBarkley,"dialog","Thanks guys. I'll do my best out there.",1);
repeat (3) sCinema(oBarkley,"move","left",4);
repeat (7) sCinema(oBarkley,"move","up",4);
sCinema(oBarkley,"effect","fadein",3);
global.roz=RomDimensionArena1;
}

