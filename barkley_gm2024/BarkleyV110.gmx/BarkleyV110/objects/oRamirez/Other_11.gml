global.dialog=1;
hhh=sOvar(oSign1,-1);
if (hhh=1) {
sCinema(oBarkley,"dialog","Ramirez:\\It looks like you've got your first hunt underway, kid. The Ghost Dad? You could've picked something a little easier, huh? I guess the thought of being a big bad monster hunter got to your head. Don't forget, before you take on the Ghost Dad, you've still got to talk to the person who commissioned it first. Oh and, good luck... hunter.");
} else if (hhh=2) {
sCinema(oBarkley,"dialog","Ramirez:\\It looks like you bagged your first monster, kid. I knew you had it in you, but you can't stop there. There are even more hunter quests posted on the bulletin board that you can accept for rare and lucrative rewards. Heh, who knows, maybe rank S hunter like me some day.");
} else if (sOvar(object_index,-1)=-1) {
sOvar(object_index,1);
sCinema(oBarkley,"dialog","Ramirez:\\This your first time at the hunter quest bulletin board, kid?");
sCinema(oBarkley,"dialog","Huh? Yeah, I guess.",1);
sCinema(oBarkley,"dialog","Ramirez:\\Heh, greenhorns. Well I'm sure you got a whole mess of questions just waiting to be answered. That's my job. Ramirez, pleased to meet you. Let's get started on the basics. That's the hunter quest bulletin board. It shows all the hunter quests that are currently available to you. Hunter quests are jobs or missions you can accept that require you to perform a task for someone, usually hunting down a monster. You got that?");
sCinema(oBarkley,"dialog","Yeah.",1);
sCinema(oBarkley,"dialog","Ramirez:\\Heh, you're not as dumb as you look, kid, but don't let it get to your head. The bright ones are the ones that always think they know everything and do something stupid and I don't want to see that happen to you. You can see more information on a specific hunt by selecting it. You can gauge your hunt's difficult by its monster grade, which can range from E - weak to S - strong. I'd start with rank E monsters and work your way up if were you.");
sCinema(oBarkley,"dialog","Okay.",1);
sCinema(oBarkley,"dialog","Ramirez:\\But that's not all. Once you accept a hunt, you still have to go and talk to whoever commisioned it. After that, the hunt begins. It sounds a lot more complicated than it really is, but you should try it out. Who knows, if you're smart and know what you're doing, you may end up a real hunter after all.");
} else {
sCinema(oBarkley,"dialog","Ramirez:\\Try it out. Go up to the hunter bulletin board and accept a hunt. Pick something easier to start out with and try to work your way up. Remember, the more difficult the hunt you accept is, the better your reward will be.");
}
