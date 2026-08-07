global.dialog=1;
if (sOvar(oZorf,-1)=-1) {
sOvar(oZorf,.5);
sCinema(oBarkley,"dialog","Zorf Gobletwind:\\H-help me...",0);
sCinema(oBarkley,"dialog","Are you alright? What's the matter?",1);
sCinema(oBarkley,"dialog","Zorf Gobletwind:\\D-dunkaroos... I require... Dunkaroos...",0);
sCinema(oBarkley,"dialog","What the hell is a dunkaroo?",1);
sCinema(oFollower3,"dialog","C'mon pap pap, don't be such a rube. They're a delicious cookie snack that you dunk in a velvety frosting. Hence the 'dunk' in dunkaroo.",1);
sCinema(oBarkley,"dialog","I, uh, knew that, Hoopz. I just didn't remember.",1);
sCinema(oBarkley,"dialog","Zorf Gobletwind:\\They've been feeding us nothing... but... v... Vitamin C. I need a... dunk... dunkaroo...",0);
sCinema(oFollower3,"dialog","He passed out. This is serious dad. He really needs those dunkaroos.",1);
sCinema(oFollower2,"dialog","There are two things a Duergar can't resist, Barkley. One is rubies. The other is a dunkaroo.",1);
sCinema(oFollower0,"dialog","This is grave, indeed then. Grave indeed.",1);
} else if (sOvar(oZorf,-1)=.5) {
sCinema(oBarkley,"dialog","Zorf Gobletwind:\\D-d... dunkaroos...",0);
} else {
sCinema(oBarkley,"dialog","Zorf Gobletwind:\\I can feel my stout constitution coming back to me after gorging on dunkaroos. I owe you a debt of gratitude, human, and that is something that we dwarfs, who have lived in underground caverns for eons do not take lightly. Thank you, friend.",0);
}
