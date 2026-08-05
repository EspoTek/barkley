global.dialog=1;
if (sOvar(object_index,-1)=1) { //pay
sCinema(oDVitale,"dialog","Thanks again, Chuck. You're the greatest!",1);
} else if (sOvar(object_index,-1)=2) { //no pay
sCinema(oDVitale,"dialog","Fuck you Charles. Get the fuck out of my face, baby. You aren't worth shit, alright? Not worth a fucking shit.",1);
} else {
sCinema(oDVitale,"dialog","Whoa, if it isn't the Round Mound of Rebound himself, baby! Let me tell ya how great the BBall Dimension is: it's great! You got all kinds of stuff here, BBall, all the Gatorade you can drink, and hey, they even got a dating service! Wow! What a place.",1);
sCinema(oBarkley,"dialog","It's great to see you here Dick. It good to know all the ballers and coaches like yourself are in such a great place after what happened...",1);
sCinema(oDVitale,"dialog","It's all great, Chuck. Can't get enough of this place!",1);
sCinema(oBarkley,"dialog","Alright, I'm gonna take a look around here. See you later Dick.",1);
sCinema(oDVitale,"dialog","Oh, well, there is one thing, you know, just one thing. This place has everything, and, well I bet all my money on keno and lost it all. I could use some coin, say 50 neo-shekels, if you get my drift, cause there's nothing like playing keno and catching the rays while sipping on some 'ade, baby!",1);
sCinema(oBarkley,"dialog","Choose:",0,"Here's 50 neo-shekels.","Nah, I can't spare any.");
sCinema(oBarkley,"code",cine_0061);
}
