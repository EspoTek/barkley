global.dialog=1;
if (sOvar(oAllard,-1)=1) {
sCinema(oBarkley,"dialog","Rufus:\\I heard you knocked him around good. I get the feeling things are gonna be changing around here.");
exit;
}
www=sOvar(object_index,-1);
if (www=-1) {
//sOvar(object_index,1);
sCinema(oBarkley,"dialog","Suit:\\Dr. Allard likes to have an idea of what goes on in the sewers. Get out of my sight and I won't have to tell him anything you wouldn't like.");
} else if (www=1) {
sCinema(oBarkley,"dialog","Suit:\\Get lost.");
} else if (www=2) {
sOvar(object_index,3);
sCinema(oBarkley,"dialog","You Rufus?",1);
sCinema(oBarkley,"dialog","Suit:\\Why you wanna know?");
sCinema(oBarkley,"dialog","I saw a note someone left for you.",1);
sCinema(oBarkley,"dialog","Suit:\\I... wait, "+"\"you?\""+" You don't even know if I'm Rufus or if it's someone else.");
sCinema(oBarkley,"dialog","So you got demoted, huh? Expected as much from a sucker like you.",1);
sCinema(oBarkley,"dialog","Rufus:\\What, you wanna fucking go?");
sCinema(oBarkley,"dialog","I'm always up for a game. But what I wanna know right now is how to get to see this Allard. I get the idea you don't like him too much either.",1);
sCinema(oBarkley,"dialog","Rufus:\\What are you planning on doing?");
sCinema(oBarkley,"dialog","Maybe teaching him a lesson.",1);
sCinema(oBarkley,"dialog","Rufus:\\Shit... you're making my fucking day you know that? That asshole sent me down here for one tiny mistake I made at the gate. Docked my pay too, not that it was much to begin with. So you say you're gonna go in there and mess him up?");
sCinema(oBarkley,"dialog","That's the plan.",1);
sCinema(oBarkley,"dialog","Rufus:\\Alright, tell the guards at the gate that "+"When we get the final hardware, the performance is just going to skyrocket.");
sCinema(oBarkley,"dialog","What's that supposed to mean?",1);
sCinema(oBarkley,"dialog","Rufus:\\I think it's something Allard said once. It's a code you can use to get through. Tell the guards I sent you and that "+"\"When we get the final hardware, the performance is just going to skyrocket,\""+" and they'll let you through. They'll know it came from me.");
sCinema(oBarkley,"dialog","Alright. Thanks for the help.",1);
sCinema(oBarkley,"dialog","Rufus:\\I should be thanking you. Dr. Allard's a real motherfucker. He deserves anything you give him.");
} else if (www=3) {
sCinema(oBarkley,"dialog","Rufus:\\Mess him up good, alright?");
}
