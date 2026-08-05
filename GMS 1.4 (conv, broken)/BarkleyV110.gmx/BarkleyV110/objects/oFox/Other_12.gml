oFox.indialog=1;
if (que=0) {
if (global.selected=0) { //interest
q0=1;
sCinema(oBarkley,"dialog","J. Lindsay:\\I think I'm interested in what most of my friends here are interested in - animals! I love animals so much! As you can see I even wanted to become one! That's how much I love animals! I love petting animals and talking to animals and being nearby animals! Also, I am a kitsune, so I enjoy hunting animals! I do not eat them - I am a strict vegetarian, I love animals too much - but I am a foxie and what foxies love to do is hunt! So I like to find little animals and sneak up on them and pounce on them and wrestle with them and then let them go. I love animals so much I even love hunting animals (nicely though)!");
} else if (global.selected=1) { //describe
q1=1;
sCinema(oBarkley,"dialog","J. Lindsay:\\What am I like? Hmmm... that's a tough one. Just kidding! I am like a person that likes animals! A lot! Back when I was a norm like yourself, way back before the B-Ballnacht I worked at a zoo. It was a really nice one. I felt so bad about animals being in cages but I just loved them so much and it was the only place I could see them. So in retrospect I am definitely sorry about working there and perpetuating that terrible industry of animal slavery. But I loved working there while I was working there because I love animals! I loved animals so much that they had me clean up the droppings from the cages because I was the only one there who loved animals enough to do that. So there you go! That's what I am like!");
} else if (global.selected=2) { //cesspool
q2=2;
sCinema(oBarkley,"dialog","J. Lindsay:\\How do I like Cesspool X? The question should be how do I love Cesspool X! And I would say "+"\"A lot!\""+" I love Cesspool X because there is nobody to hurt us down here. And I also love it because there are so many people like me down here. People like Frank and Zalatar and Chip. And like Eric! People that share my ideals and viewpoints and passions. But most of all, I love Cesspool X because so many people down here are really, really good friends!");
} else if (global.selected=3) { //leave
if (q0=0 || q1=0 || q2=0) {
sCinema(oFollower0,"dialog","Barkley, are you sure you don't want to ask her more questions?",1);
sCinema(oBarkley,"dialog","Are you finished?",0,"No, I want to ask her more.","Yes, we're done here.");
sCinema(oBarkley,"code",cine_0146);
//sCinema(oBarkley,'wait',0.3);
que=1;
} else {
que=1;
}
//
}
if (global.selected!=3) {
sCinema(oBarkley,"dialog","What do you want to say?",0,"What are your interests?","How would you describe yourself?","How do you like Cesspool X?","That's all.");
sCinema(oBarkley,"code",cine_0146);
//sCinema(oBarkley,'wait',0.3);
}
} else { //leave previous
que=0;
if (global.selected=0) {
sCinema(oBarkley,"dialog","What do you want to say?",0,"What are your interests?","How would you describe yourself?","How do you like Cesspool X?","That's all.");
sCinema(oBarkley,"code",cine_0146);
//sCinema(oBarkley,'wait',0.3);
} else {
sCinema(oBarkley,"dialog","Alright, J. Lindsay. That's it.",1);
sCinema(oFollower0,"dialog","Thank you, J. Lindsay. You've been a great help.",1);
sCinema(oBarkley,"dialog","J. Lindsay:\\You're welcome! Helping is one of this kitsune's favorite things to do!");
sCinema(oBarkley,"wait",1);
sCinema(oFollower0,"dialog","I hope that's information enough to write a halfway decent poem with. Let's retire elsewhere and compose this.",1);
sCinema(oBarkley,"effect","fadein",3);
global.roz=RomSewerInn;
//inn
}
}
