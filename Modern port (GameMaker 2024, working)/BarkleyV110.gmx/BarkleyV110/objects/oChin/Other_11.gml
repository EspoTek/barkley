global.dialog=1;
if (global.scheme[3]=0) {
global.scheme[3]=1;
sCinema(oChin,"dialog","Heya Barkuri, you hear about that Ultimate Hellbane? That guy that kill all those people?",1);
sCinema(oBarkley,"dialog","Yeah, yeah, I heard about that.",1);
sCinema(oChin,"dialog","Yeah, he one tough customer I hear. Uses zaubers. Kinda makes you wonder how B.L.O.O.D.M.O.S.E.S. got their hands on such powerful weapons.",1);
sCinema(oBarkley,"dialog","Yeah. Didn't he just kill those two guys at the mall?",1);
sCinema(oChin,"dialog","Yeah, yeah, they say he out for more tonight. That why I always carry my Square-Enix-Goya gun, can't be safe around here no more. Top of the line too. So why you here so late Barkuri? What you want?",1);
sCinema(oBarkley,"dialog","I'm not feeling so well. I need some medicine.",1);
sCinema(oChin,"dialog","Aww, I all out of medicine, Barkuri, but I give you this ecto cooler. Make you feel better, huh?",1);
sCinema(oBarkley,"dialog","Yeah, thanks a lot Chin.",1);
sCinema(oChin,"dialog","Yeah, yeah, no problem. Hey, and Barkuri.",1);
sCinema(oBarkley,"dialog","Yeah?",1);
sCinema(oChin,"dialog","Don't let that Ultimate Hellbane get you.",1);
sCinema(oBarkley,"item","Ecto Cooler",5);
sCinema(oBarkley,"item","Steroids",3);
sCinema(oBarkley,"item","Tobacco",2);
} else {
itemf[0]="Ecto Cooler";
itemf[1]="Tobacco";
itemf[2]="Steroids";
itemf[3]="";
sCinema(oChin,"dialog","Back for more, Barkuri?",1);
sCinema(oBarkley,"code",cine_0023);
sCinema(oBarkley,"cond",cine_0003);
sCinema(oChin,"dialog","You take care, Barkuri!",1);
}
