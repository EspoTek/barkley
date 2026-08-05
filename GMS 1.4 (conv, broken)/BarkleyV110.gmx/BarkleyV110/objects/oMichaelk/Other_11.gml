global.dialog=1;
if (sOvar(oIntro32,-1)!=3) {
sCinema(oBarkley,"dialog","Mikael K.:\\What are you doing out here man? Do you know where we are? These are the outskirts of Neo New York, you're walking along the border of everything and nothing.");
sCinema(oBarkley,"dialog","We're looking for Cuchulainn's Tomb, you know where it is?",1);
sCinema(oBarkley,"dialog","Mikael K.:\\Yeah, you came down the wrong way where the road splits. Cuchulainn's Tomb is up the other way. Just keep heading north and you'll make it.");
sCinema(oBarkley,"dialog","Thanks a lot, man.",1);
sCinema(oBarkley,"dialog","Mikael K.:\\It's my business to help people out. One might even say helping is my forte.");
} else {
if (sOvar(object_index,-1)=-1) {
sOvar(object_index,1);
sCinema(oBarkley,"dialog","Mikael K.:\\You look like you're getting ready to head out of Neo New York.");
sCinema(oBarkley,"dialog","What's it to you, chump?",1);
sCinema(oBarkley,"dialog","Mikael K.:\\Hey, hey, no need to be like that. I'm just trying to help out. After all, helping is my forte. I was wondering if you needed an explanation of the world map, since this is your first time.");
sCinema(oBarkley,"dialog","World map? What the hell is that? You on chicken fries or something?",1);
sCinema(oBarkley,"dialog","Mikael K.:\\You've never heard of the world map? Man, where are you from? The world map is where you go when you leave a town or donjon and it's the easiest way to get from one place to another. The world's shrunken down on the world map so you can move around quicker.");
sCinema(oBarkley,"dialog","This doesn't sound that complicated.",1);
sCinema(oBarkley,"dialog","Mikael K.:\\Yeah, it's not but since it's your first time I figured I could clear stuff up for you. Another thing to remember is that you've always gotta look out for monsters on the world map too. It seems like they're everywhere these days.");
sCinema(oBarkley,"dialog","Alright, thanks for the help man.",1);
sCinema(oBarkley,"dialog","Mikael K.:\\Hey, it's what I'm here for.");
} else {
sCinema(oBarkley,"dialog","Mikael K.:\\It would be fair to assume my forte is helping people.");
}
}
