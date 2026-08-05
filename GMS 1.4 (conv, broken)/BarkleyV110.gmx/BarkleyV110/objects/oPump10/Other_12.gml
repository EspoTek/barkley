if (stage=0 && global.selected=3) win=1;
else if (stage=1 && global.selected=2) win=1;
else if (stage=2 && global.selected=2) win=1;
else if (stage=3 && global.selected=2) win=1;
else if (stage=4 && global.selected=0) win=1;
else win=0;
if (win=1) {
stage+=1;
if (stage=1) {
sCinema(oFollower3,"dialog","Easy, vidcon.",1);
sCinema(oBarkley,"dialog","Pump:\\Hmph, even gaijin know that. Which of the following is the most superior?");
sCinema(oBarkley,"dialog","Which of the following is the most superior?",0,"Madden Football","Quake 3","Arc the Lad 2","Tony Hawk Pro Skater");
sCinema(oBarkley,"code",cine_0429);
} else if (stage=2) {
sCinema(oFollower3,"dialog","Arc the Lad 2, but I really like Tony Hawk...",1);
sCinema(oBarkley,"dialog","Pump:\\Arc the Lad is correct, although your comment about Tony Hawk indicates more than just a minimal level of idiocy. What is the ultimate vidcon snack?");
sCinema(oBarkley,"dialog","What is the ultimate vidcon snack?",0,"Pizza","Hot Pockets","Pocky","Burritos");
sCinema(oBarkley,"code",cine_0429);
} else if (stage=3) {
sCinema(oFollower3,"dialog","Well, pocky is alright...",1);
sCinema(oBarkley,"dialog","Pump:\\Correct. Pocky's light weight and easy-to-handle shape makes it perfect for vidconning on the go. What can Yasunori Mitsuda's compositional style best be described as?");
sCinema(oBarkley,"dialog","Yasunori Mitsuda's compositional style?",0,"Chronocentric","Accoustic Consonance","Celto-tropic","Neo-classical");
sCinema(oBarkley,"code",cine_0429);
} else if (stage=4) {
sCinema(oFollower3,"dialog","Celto-tropic, I guess...",1);
sCinema(oBarkley,"dialog","Pump:\\Yes, but any idiot could have told me that. Final question. What is my favorite vidcon?");
sCinema(oBarkley,"dialog","What is my favorite vidcon?",0,"Angelique: Tenkuu no Chinkonka","Angellique: Tenko no Chinkona","Angelica: Tenku no Chinkonka","Angelique: Tenkuu no Chinonka");
sCinema(oBarkley,"code",cine_0429);
} else {
sCinema(oFollower3,"dialog","It's the first one.",1);
sCinema(oFollower3,"dialog","Pump:\\Congratulations, you've passed my ultimate vidcon challenge. Here is your reward.");
sCinema(oBarkley,"code",cine_0430);
sCinema(oBarkley,"wait",2);
sCinema(oBarkley,"cond",cine_0171);
sCinema(oBarkley,"code",cine_0431);
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"dialog","Wait, that was it?",1);
sCinema(oFollower3,"dialog","Pump:\\Next time collect all four library cards.");
sCinema(oBarkley,"dialog","Fuck this.",1);
sCinema(oBarkley,"code",cine_0428);
}
} else {
sCinema(oBarkley,"dialog","Pump:\\Heh, you blubbering ignoramous. Even a slack-jawed American sports enthusiast with no concept of the differences between the Famicom and Super Famicom Entertainment Systems could have gotten that one. Not that it's any surprise that your lackluster brain, riddled with deficiencies due, no doubt, to your slovenly Western lifestyle and upbringing, could ever possibly retain that information. Here's a tip: read a manga. Oh yeah, and have fun looking that up in the dictionary. That's right, you won't find it because moronic Westerners who don't know the difference between the a wii-mote and a nunchuck can't read from right to left. Now if you'll excuse me, my sake's getting cold.");
sCinema(oBarkley,"code",cine_0428);
}
