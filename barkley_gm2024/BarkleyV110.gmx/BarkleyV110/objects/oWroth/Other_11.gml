global.dialog=1;
if (sOvar(oWroth,-1)=-1) {
sOvar(oWroth,.5);
sCinema(oBarkley,"dialog","Wrothgar Satchelscream:\\Ahhh, greetings young one. I see that you could not resist the tempting allure of my bubbling brews and potions. Many a Duergar has gulped my eldritch tonics. Perhaps you would like to as well, hmmm? Tell me, young one, from how far away did you detect the scent of my arcane concoctions?",0);
sCinema(oBarkley,"dialog","Detection of potion scent?",0,"10 feet.","25 feet.","50 feet.","100 feet.");
sCinema(oBarkley,"code",cine_0490);
} else if (sOvar(oWroth,-1)=.5) {
sCinema(oBarkley,"dialog","Wrothgar Satchelscream:\\Ah, what I wouldn't do to wet my whistle with a cold one. I'm speaking, of course, about potions. I do enjoy gulping chemicals.",0);
} else if (sOvar(oWroth,-1)=1) {
sOvar(oWroth,2);
sCinema(oBarkley,"dialog","Wrothgar Satchelscream:\\You did it, my boy! You've given me back my primary form of sustenence: chemicals. I've prepared you a particular brew that I think you might like. Gulp it, you might enjoy it.",0);
sCinema(oBarkley,"item","Mysterious Potion",1);
} else {
sCinema(oBarkley,"dialog","Wrothgar Satchelscream:\\Have you gulped my potion yet?",0);
}
