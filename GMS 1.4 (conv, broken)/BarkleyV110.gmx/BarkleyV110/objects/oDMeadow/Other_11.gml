global.dialog=1;
if (sOvar(object_index,-1)=-1) { //pay
sOvar(object_index,1);
sCinema(oBarkley,"dialog","Meadowlark Lemon:\\Have you heard? The Festival Tournament is happening soon! The whole dimension is buzzing about it!");
sCinema(oBarkley,"dialog","What's the Festival Tournament?",1);
sCinema(oBarkley,"dialog","Meadowlark Lemon:\\You've never heard of the Festival Tournament? The dimension's greatest warriors come together for a spectacular display of martial and magical ability. They say the winner gets a very precious one-of-a-kind prize. I'm so excited!");
sCinema(oBarkley,"dialog","Sounds great.",1);
sCinema(oBarkley,"dialog","Meadowlark Lemon:\\It is, but I'm pretty sure it's going to go to the arena champion, Kevin Garnett. He's been arena champion for nearly 10 years and has never been defeated. Not even once! It's amazing!");
sCinema(oBarkley,"dialog","Wait, did you say Kevin Garnett?",1);
sCinema(oBarkley,"dialog","Meadowlark Lemon:\\Yeah, played for the Timberwolves. That's the one.");
sCinema(oBarkley,"dialog","I haven't seen him in years. I want to talk to him.",1);
sCinema(oBarkley,"dialog","Meadowlark Lemon:\\Well good luck with that. The only thing he cares about now is training for the Festival Tournament. He hardly speaks to anyone.");
sCinema(oBarkley,"dialog","Oh well. Maybe next time then.",1);
} else if (sOvar(object_index,-1)=1) { //no pay
sCinema(oBarkley,"dialog","Meadowlark Lemon:\\Oh who should I root for? Kevin Garnett, the powerful and mysterious warrior, or some underdog? It's so exciting, I just don't know!");
}
