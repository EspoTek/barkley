if (stage=0) {
hhh=sOvar(object_index,-1);
if (global.selected=0) {
if (hhh=-1) {
sCinema(oBarkley,"dialog","This guy is blocking the tower door. He looks like he's in some kind of trance, I don't think he even noticed we're here.",1);
} else {
sCinema(oBarkley,"dialog","It's Mack. Going from past experience with these cult members, who knows what dark secrets he has.",1);
}
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=1) {
if (hhh=-1) {
sOvar(object_index,1);
oBarkley.solid=0;
sCinema(oBarkley,"dialog","Can you hear me? You gotta step back. I need to go in the tower.",1);
sCinema(oMack,"jump","start");
sCinema(oMack,"jump","end");
sCinema(oMack,"face","right");
sCinema(oBarkley,"dialog","Cultist:\\By Yelmirb's blessings! An outsider! Tell me friend, what brings you to this land in these dark times?",0);
sCinema(oBarkley,"dialog","My son is sick and I need to see Yelmirb.",1);
sCinema(oBarkley,"dialog","Cultist:\\Well, unfortunate as that is, the tower is locked.");
sCinema(oBarkley,"dialog","Yeah, I know all about that. I got this key so I can enter the tower.",1);
sCinema(oBarkley,"dialog","Cultist:\\Key? You mean the Orb Sceptre and Immaculate Rod?");
sCinema(oBarkley,"dialog","What are you talking about? Some chump called Rutherford told me all I needed was this sceptre to enter the tower.",1);
sCinema(oBarkley,"dialog","Cultist:\\Rutherford? Oh, you mean Richards right?");
sCinema(oBarkley,"dialog","Jenkins told us his name was Raffleson.",1);
sCinema(oBarkley,"dialog","Cultist:\\Ah yes, Gerrad Jenkins. He is correct, but his \"true\" name is Richards. You see, Richards came here 6 years ago to cure his own diabetes. However, he tried to split the faith at Liberty Island by promoting radical ideas. We had no choice but to exile him, but he keeps returning under different names, trying to start up a new revolution. He goes by many names, but his true name remains as that; Richards.");
sCinema(oBarkley,"dialog","None of that matters. All we need is that rod you were talking about, can you tell us where we can find it?",1);
sCinema(oBarkley,"dialog","Cultist:\\Yes, but first, I must tell you of a tale... Oh! Forgive my rudeness, I am Mack; a level 15 Sugar Slayer. You are safe with me outsider. Now, follow me to the tablet. There is much explaining to do.");
repeat (18) sCinema(oMack,"move","down",5);
sCinema(oBarkley,"code",cine_0417);
sCinema(oBarkley,"dialog","Where the hell are these guys coming from?",1);
sCinema(oFollower0,"dialog","I don't know Barkley, but we are at their mercy until we meet Yelmirb. Let's go to the tablet.",1);
} else if (hhh=1) {
sOvar(object_index,2);
sCinema(oBarkley,"dialog","Mack:\\It all started 30 years ago, just after the Great Awakening. Once we became aware of the evils of sugar, it would be tantamount to sin to keep this information secret. Thus we formed a group of the most devout L.I.B.E.R.T.Y. followers to travel the lands spreading the word. We called them the Needles of Hope. After a year of their successful campaign to liberate the world of sugar, something sinister occurred. You see, we initially thought that it would be as simple as telling people not to consume sugar and that would be the end of it... We were wrong.",0);
sCinema(oBarkley,"dialog","What does this have to do with the rod? I don't have time for your fairy-tales.",1);
sCinema(oBarkley,"dialog","Mack:\\Be patient my friend, the answers will come in time. As I was saying, a proactive message was not enough to end the ills of sugar. What we didn't know was that sugar was sentient... Living, if you will, be it a very basic existence. Its ultimate goal was to control humanity through diabetes, acting as a parasite to force its will upon the unsuspecting populace. Once we set the wheels in motion to stop it... It evolved. Its first incarnation, as we knew it, were Sugar Delmons.",0);
sCinema(oBarkley,"dialog","Delmons? You mean demons?",1);
sCinema(oFollower0,"dialog","No, Barkley. Delmons are part of the same genus as Demi-Daemons, Arch Demoniods, Lesser Demonkin, and more commonly Demons. They are slightly more powerful than demons but this is highly subject to debate as Demons possess Imp Summon level 2 whereas Delmons possess a Junction ability to seed powers from entities. I am actually quite shocked the connection between sugar and delmons was never made given the obvious traits.",1);
sCinema(oBarkley,"dialog","Mack:\\Excellent observations and you are correct. So the Sugar Delmons knew their days were outnumbered, and as a last ditch effort to combat our aggressive war against them, they all convened at the Tower of Glucose. Otherwise known as the former Domino Sugar factory, its destruction during the cyberpocalypse lead to a great pillar of sugar being created. After their meeting, they decided to use ancient magicks to merge into one entity... Das Fructose Ungeheuer.",0);
sCinema(oBarkley,"dialog","The what? Are you just making shit up now?",1);
sCinema(oFollower0,"dialog","The Diabeastie... I thought it was only a myth?",1);
sCinema(oBarkley,"dialog","Mack:\\Take a look around you, my friend. The sugarfication of our holy land is just a small... Taste, if you will... Of its assault against Liberty Island. With the tower locked, Yelmirb will undoubtedly die soon and sugar will prevail.",0);
sCinema(oBarkley,"dialog","Let's make one thing clear here, I'm not here to help you or any of your looney toon friends. I don't want to hear any more stories. My son is dying. Do you understand? Just tell me where the rod is.",1);
sCinema(oBarkley,"dialog","Mack:\\You are naive Mr. Barkley, for this lore is the only guard us mortals have against Das Fructose Ungeheuer. However, I will not press further if you refuse to learn, instead I will comply with your request. The Immaculate Rod lies deep beneath this island. You can find an entrance to the nether regions through the well near the center of town.",0);
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"dialog","Mack:\\I have some neo-shekels I want you to have. You will need them, if you hope to defeat the Diabeastie.");
sItem("gold",750); 
sCinema(oBarkley,"code",cine_0153);
sCinema(oBarkley,"dialog","Received $750 Neo-Shekels!");
sCinema(oBarkley,"code",cine_0074);
sCinema(oFollower0,"dialog","Thanks for all the help, Mack.",1);
repeat (2) sCinema(oBarkley,"move","down");
sCinema(oBarkley,"dialog","Mack:\\Wait!",0);
sCinema(oMack,"move","down");
sCinema(oBarkley,"face","up");
sCinema(oBarkley,"dialog","Mack:\\I will not lie to you Barkley, great danger awaits you. Here, take this Sugar Counter with you. Do not expose yourself to the sugar, or you will perish. If you allow the particle count to exceed 4.5 granules per square inch... You're as good as dead.",0);
sCinema(oBarkley,"item","Sugar Counter",1);
sCinema(oBarkley,"dialog","Mack:\\Yelmirb bless you...");
} else {
sCinema(oBarkley,"dialog","Mack:\\The well will lead you to the rod. Beware, as the sugar readings down there far exceed normal conditions. Do not allow the particle count to go above 4... You don't want to know what happens if you have that level of exposure.");
}
} else if (global.selected=2) {
sCinema(oBarkley,"dialog","There's nothing on him to take, and I'm not gonna steal anyway.",1);
sCinema(oBarkley,"code",cine_0396);
} else {
sCinema(oBarkley,"code",cine_0006);
}
}
