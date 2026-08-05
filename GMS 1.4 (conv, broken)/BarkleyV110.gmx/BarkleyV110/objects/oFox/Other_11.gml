global.dialog=1;
www=sOvar(oSnail,-1);
sss=sOvar(object_index,-1);
if (www=-1) {
if (sss=-1) {
sOvar(object_index,1);
sCinema(oBarkley,"dialog","J. Lindsay:\\Hi there! Welcome to Cesspool X! I am J. Lindsay, a humble kitsune. I hope we can get along! I love it when newbies come to our town! I love welcoming people! May I ask your name!?");
sCinema(oBarkley,"dialog","It's Barkley.",1);
sCinema(oBarkley,"dialog","J. Lindsay:\\Then Barkley, I hereby officially Welcome to Cesspool X! It's a tiny little town but I hope you enjoy it here as much as we do!");
} else {
sCinema(oBarkley,"dialog","J. Lindsay:\\It's you again! Hope you're enjoying Cesspool X so far (and you haven't gotten pounced too much)!");
}
} else if (www=1) { //basic give
if (sss=-1) { //never talked
sCinema(oBarkley,"dialog","You're J. Lindsay, right?",1);
sCinema(oBarkley,"dialog","J. Lindsay:\\Why yes that's me! And what's your name?");
sCinema(oBarkley,"dialog","Barkley, but really I just-",1);
sCinema(oBarkley,"dialog","J. Lindsay:\\Well hello then Barkley! Welcome to Cesspool X!It's a tiny little town but I hope you enjoy it here as much as we do!");
sCinema(oBarkley,"dialog","... need to deliver this. This is a poem. It's from the snail.",1);
} else { //talked
sCinema(oBarkley,"dialog","J. Lindsay:\\Hi! It's you again! What brings you back!?");
sCinema(oBarkley,"dialog","I was told to deliver this. It's a poem. It's from the snail.",1);
}
sCinema(oBarkley,"dialog","J. Lindsay:\\It's from Eric?");
sCinema(oBarkley,"dialog","Yeah, Eric. The snail. Read it.",1);
sCinema(oBarkley,"wait",3);
sCinema(oBarkley,"dialog","J. Lindsay:\\... Why... this is... very nice. I'll have to go thank Eric for this. I'm on welcome duty right now though, so it'll have to be later. Thank your for delivering this, and be sure to tell Eric thank you if you see him.");
sCinema(oBarkley,"dialog","Sure.",1);
sCinema(oFollower0,"dialog","Well. I wouldn't say that went great, but she wasn't appalled by it. That's certainly better than I expected. Let's go back and talk to Eric.",1);
sOvar(oSnail,5);
sItem("Poem",-1);
} else if (www=2) { //ask q's
if (sss=2) {
sCinema(oBarkley,"dialog","J. Lindsay:\\I'll be happy to answer any more questions you have, don't worry!");
} else if (sss=-1) { //never talked
sCinema(oBarkley,"dialog","You're J. Lindsay, right?",1);
sCinema(oBarkley,"dialog","J. Lindsay:\\Why yes that's me! And what's your name?");
sCinema(oBarkley,"dialog","Barkley. And this is Balthios.",1);
sCinema(oBarkley,"dialog","J. Lindsay:\\Well hello then Barkley! Hello Balthios! Welcome to Cesspool X! It's a tiny little town but I hope you guys enjoy it here as much as we do!");
sCinema(oFollower0,"dialog","Thank you, we appreciate that. Listen, we're new here and wanted to get to know some people in the town. Could we maybe ask you a few questions and see what you're all about?",1);
} else { //talked 
sCinema(oBarkley,"dialog","J. Lindsay:\\Hi Barkley! Who's your friend there!? I didn't ask last time we talked.");
sCinema(oBarkley,"dialog","Oh. This is Balthios.",1);
sCinema(oBarkley,"dialog","Well hello then Balthios! Welcome to Cesspool X! ");
sCinema(oFollower0,"dialog","Thank you, I appreciate that. Listen, we're new here and wanted to get to know some people in the town. Could we maybe ask you a few questions and see what you're all about?",1);
}
sOvar(object_index,2);
sCinema(oBarkley,"dialog","J. Lindsay:\\Sure thing! I love getting to know people!");
sCinema(oFollower0,"dialog","Great. Ok then, Barkley here will ask you a few questions.",1);
sCinema(oBarkley,"dialog","J. Lindsay:\\Bring 'em on!");
sCinema(oBarkley,"dialog","Ok, uh...",1);
sCinema(oBarkley,"dialog","What do you want to say?",0,"What are your interests?","How would you describe yourself?","How do you like Cesspool X?","That's all.");
sCinema(oBarkley,"code",cine_0146);
//sCinema(oBarkley,'wait',0.3);
////
} else if (www=5 || www=6 || www=7) { //done basic / bad
sCinema(oBarkley,"dialog","J. Lindsay:\\Thanks for delivering that poem guys! I'll go talk to Eric sometime later.");
} else if (www=3 || www=4) {
sItem("Poem",-1);
sCinema(oBarkley,"dialog","J. Lindsay:\\Hi! It's you again! What brings you back!?");
sCinema(oBarkley,"dialog","I was told to deliver this. It's a poem. It's from the snail.",1);
sCinema(oBarkley,"dialog","J. Lindsay:\\It's from Eric?");
sCinema(oBarkley,"dialog","Yeah, Eric. The snail. Read it.",1);
sCinema(oBarkley,"wait",3);
if (www=4) { //bad
sCinema(oBarkley,"dialog","J. Lindsay:\\This... oh my god... it's like he knows me even better than I know myself! He says I love animals, and he's right, I do love animals! And I don't mind cleaning up after them, and I love my friends here! I can't believe this... has he felt like this all this time? How could I have been so blind? Eric... I'm coming...");
sCinema(oBarkley,"tint",c_black,1);
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"code",cine_0147);
} else {
sCinema(oBarkley,"dialog","J. Lindsay:\\This... hmm. This is... it's something. I mean... it's long? He must have tried hard? Maybe? Thanks, I guess. If you see him you could tell him I said thank you to him too. I should probably come by and say it myself sometime. He's a cute guy and all but this poetry is really... bewildering, sort of. I just can't really imagine what was running through the writer's head. Anyway, thanks for bringing it by guys. I'll ask him about it later.");
sCinema(oBarkley,"wait",1);
sCinema(oFollower0,"dialog","So it was that bad...",1);
sCinema(oBarkley,"dialog","Let's just get our reward and get out of here.",1);
sOvar(oSnail,6);
}
}
