global.dialog=1;
if (sOvar(object_index,-1)=-1) {
sOvar(object_index,1);
sCinema(oBarkley,"dialog","???|Matt Guokas:\\Well as I live and breathe, if it isn't Charles Barkley!");
sCinema(oBarkley,"dialog","C...Coach? Coach Guokas! Holy shit! What the hell are you doing out here?",1);
sCinema(oBarkley,"dialog","Matt Guokas:\\Haha, no kidding, it is you! How've you been, Barkley?");
sCinema(oBarkley,"dialog","Times have been tough, Coach, but I'll make it.",1);
sCinema(oBarkley,"dialog","Matt Guokas:\\Yeah, the Purge has been hard on all of us but I know you've got what it takes to rebound. You always did on the court. A little b-ball humor if you will.");
sCinema(oBarkley,"dialog","So what are you doing out here coach?",1);
sCinema(oBarkley,"dialog","Matt Guokas:\\Ah, I gave up the whole coaching gig after the Purge and started raising b-balls here on the ranch. It's a nice change of pace and everything.");
sCinema(oBarkley,"dialog","Raising b-balls? What do you mean?",1);
sCinema(oBarkley,"dialog","Matt Guokas:\\Well, first we breed 'em. That's the tough part, cuz sometimes you get these really ornery b-balls that just don't want to mate. You gotta coerce 'em, you see? But after that it's not that hard, just water and feed them. After they're old enough you can start to use 'em however you feel. Some folks keep 'em as pets. Others battle them in the b-ball stadium. Some just like to bounce 'em. Me? I don't mind the company of a good b-ball now and then. How about it Barkley, want to try your hand at raising a b-ball?");
sCinema(oBarkley,"dialog","Sure, what do I have to do?",1);
sCinema(oBarkley,"dialog","Matt Guokas:\\You can have the ball on the top right of the ranch. He's a real feisty guy so you better be ready. All you have to do is feed, water, and train it. Each different type of food and drink raises a different stat, but they cost money. Training it also raises its stats and it doesn't cost any money, but train it too hard and it'll start to resent you and you don't want to see what an angry b-ball can do. Got all that Barkley?");
sCinema(oBarkley,"dialog","Yeah, I think so.",1);
sCinema(oBarkley,"dialog","Matt Guokas:\\Raising a b-ball can be tough but the rewards are endless. If you've got any more specific questions feel free to come back and ask.");
} else {
stoge=0;
sCinema(oBarkley,"dialog","Let's talk shop. What do you need help with?",0,"Feeding the b-ball","Watering the b-ball","Training the b-ball","Leave");
sCinema(oBarkley,"code",cine_0051);
}
