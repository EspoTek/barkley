if (sItem("Hell B-ball")=0) global.char_eweapon[0]="H/S B-ball";
else { sItem("Hell B-ball",-1); sItem("H/S B-ball",1); }
sParty("add",1); sParty("add",3); sParty("add",4);
global.skipper=19;
sOvar(oIntro32,2);
oBarkley.y=96;
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"dialog","Shimmerglobe:\\Just as I expected. There is something I must teach you before we go on. It is... the final \"Verboten Jam\".");
sCinema(oBarkley,"dialog","Wh-what?",1);
sCinema(oBarkley,"dialog","Shimmerglobe:\\It is... the Double Dribble. With this skill, you can wield both myself and the Hell B-Ball, merging our powers.");
sCinema(oBarkley,"dialog","This power coursing through my body... I can... dribble two b-balls at once...",1);
sCinema(oBarkley,"dialog","Shimmerglobe:\\Come Barkley. We must leave at once. We have little time to stop B.L.O.O.D.M.O.S.E.S.");
repeat (2) sCinema(oBarkley,"move","up");
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"code",cine_0308);
sCinema(oBarkley,"dialog","You recieved H/S B-ball! Shimmerglobe and the Hell B-ball can now be double dribbled for 2 attacks!");
sCinema(oBarkley,"effect","fadein",3);
global.roz=RomCuchEnter;
