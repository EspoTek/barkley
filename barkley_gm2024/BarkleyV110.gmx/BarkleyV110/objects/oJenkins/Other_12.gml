if (stage=0) {
if (global.selected=0) {
hhh=sOvar(object_index,-1);
if (hhh<2) {
sCinema(oBarkley,"dialog","It's another one of those crazy cult members, this one looks different though. He looks wounded.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (hhh=2) {
sOvar(object_index,3);
sCinema(oBarkley,"dialog","Looks like he died.",1);
sCinema(oFollower0,"dialog","He is gripping onto something. It looks like -",1);
sCinema(oFollower2,"dialog","A chaff grenade. Hmmm, while dwarves are more keen on throwing axes and satchels to toss at foes, I'm sure my expert lobbing skills could extend to grenades. Let's take it.",1);
sBattleSkill(3,"Chaff Grenade");
sCinema(oBarkley,"dialog","Cyberdwarf learned \"Chaff Grenade!\"");
sCinema(oBarkley,"code",cine_0396);
} else {
sCinema(oFollower0,"dialog","Leave him be Barkley. He's gone now.",1);
sCinema(oBarkley,"code",cine_0396);
}
} else if (global.selected=1) {
hhh=sOvar(object_index,-1);
if (hhh=-1) {
oLRod.depth=-999;
sOvar(object_index,1);
sCinema(oBarkley,"dialog","Jenkins:\\I see you have come to finish me off... So the coward sends someone else to do his dirty work. It makes no difference, you shall be banished all the same.",0);
sCinema(oBarkley,"dialog","I didn't come here to fight anyone. I'm just looking for a key.",1);
sCinema(oBarkley,"dialog","Jenkins:\\You mean...",0);
sCinema(oBarkley,"code",cine_0397);
sCinema(oBarkley,"dialog","Jenkins:\\This key?",0);
sCinema(oBarkley,"code",cine_0376);
sCinema(oBarkley,"dialog","Yeah, that looks like it. Can I have it?",1);
sCinema(oBarkley,"dialog","Jenkins:\\What kind of fool do you take me, Gerrad Jenkins, for? I fought to the death protecting this from the wrong hands, and you think I would simply hand it over?",0);
sCinema(oBarkley,"dialog","Someone named Rutherford told me I needed the key to enter Liberty Tower so I can see Yelmirb. If you don't hand it over, I'm gonna have to slam you.",1);
sCinema(oBarkley,"dialog","Jenkins:\\Rutherford? So that's what Raffleson goes by these days. You really are clueless. That scum bag wants Liberty Tower to be unlocked so he can kill Yelmirb. Tell me, what good is unlocking the tower if Yelmirb dies?",0);
sCinema(oBarkley,"dialog","What! He didn't tell me that.",1);
sCinema(oBarkley,"dialog","Jenkins:\\Of course he didn't... Listen closely, I'm fatally wounded and don't have much time left. I will give you this key, but you must kill Raffleson -- who you know as Rutherford -- before entering the tower. If you don't, you'll never get a chance to see Yelmirb.",0);
sCinema(oBarkley,"dialog","Will you promise to kill Raffleson?",0,"Yeah.","Nah.");
sCinema(oBarkley,"code",cine_0398);
stage=1;
} else if (hhh=1) {
sCinema(oBarkley,"dialog","Jenkins:\\Raffleson is known for his deception... Don't fall prey to any of his schemes, no matter what he says.",0);
sCinema(oBarkley,"code",cine_0396);
} else {
sCinema(oFollower0,"dialog","Leave him be Barkley. He's gone now.",1);
sCinema(oBarkley,"code",cine_0396);
}
} else if (global.selected=2) {
hhh=sOvar(object_index,-1);
if (hhh<2) {
sCinema(oBarkley,"dialog","I don't like the cut of his jib.",1);
sCinema(oBarkley,"code",cine_0396);
} else {
sCinema(oFollower0,"dialog","Leave him be Barkley. He's gone now.",1);
sCinema(oBarkley,"code",cine_0396);
}
} else {
sCinema(oBarkley,"code",cine_0006);
}
} else { //stage1
if (global.selected=0) {
sOvar(oIntroL3,2);
sCinema(oBarkley,"dialog","Alright, I'll do it. Man, things over here are pretty fucked up. I thought Neo New York was bad.",1);
sCinema(oBarkley,"item","Orb Sceptre",1);
sCinema(oBarkley,"dialog","Jenkins:\\Yelmirb be with you...",0);
sCinema(oBarkley,"code",cine_0396);
} else {
fsf=floor(random(3));
if (fsf=0) sCinema(oBarkley,"dialog","Jenkins:\\I didn't catch that. What did you say?",0);
else if (fsf=1) sCinema(oBarkley,"dialog","Jenkins:\\You would be mad to reject my terms! Yelmirb will die!",0);
else sCinema(oBarkley,"dialog","Jenkins:\\Saying no is simply not an option!",0);
sCinema(oBarkley,"dialog","Will you promise to kill Raffleson?",0,"Yeah.","Nah.");
sCinema(oBarkley,"code",cine_0398);
}
}



