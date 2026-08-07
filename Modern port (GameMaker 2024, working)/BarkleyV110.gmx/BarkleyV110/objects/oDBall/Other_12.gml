if (stoge=-1) {
sCinema(oBarkley,"dialog","What do you want to do?",0,"Feed the b-ball","Water the b-ball","Train the b-ball","Leave");
sCinema(oBarkley,"code",cine_0046);
stoge=0;
exit;
}
if (stoge=0) {
if (global.selected=0) { //feed
stoge=1;
sCinema(oBarkley,"dialog","What do you want to feed the b-ball?",0,"Jordan Greens ($10)","Ewing Greens ($20)","Chamberlain Greens ($30)","Back");
sCinema(oBarkley,"code",cine_0046);
} else if (global.selected=1) { //water
stoge=2;
sCinema(oBarkley,"dialog","What do you want to water the b-ball with?",0,"Gatorade A.M. ($10)","Gatorade X-Factor ($20)","Gatorade Fierce ($30)","Back");
sCinema(oBarkley,"code",cine_0046);
} else if (global.selected=2) { //train
stoge=3;
sCinema(oBarkley,"dialog","How do you want to train the b-ball?",0,"Dribble","Shoot","Pass","Back");
sCinema(oBarkley,"code",cine_0046);
}
} else if (stoge=1) { //feed
if (global.selected=3) { stoge=-1; sCinema(oBarkley,"code",cine_0046); exit; }
price=(global.selected+1)*10;
if (sItem("goldcheck",price)) {
sItem("gold",-price);
sCinema(oBarkley,"dialog","You finish feeding the b-ball. Anything else?");
} else {
sCinema(oBarkley,"dialog","You don't have enough neo-shekels to do that!");
}
stoge=0;
sCinema(oBarkley,"code",cine_0047);
} else if (stoge=2) {
if (global.selected=3) { stoge=-1; sCinema(oBarkley,"code",cine_0046); exit; }
price=(global.selected+1)*10;
if (sItem("goldcheck",price)) {
sItem("gold",-price);
sCinema(oBarkley,"dialog","You finish watering the b-ball. Anything else?");
} else {
sCinema(oBarkley,"dialog","You don't have enough neo-shekels to do that!");
}
stoge=0;
sCinema(oBarkley,"code",cine_0048);
} else if (stoge=3) {
if (global.selected=3) { stoge=-1; sCinema(oBarkley,"code",cine_0046); exit; }
sCinema(oBarkley,"dialog","You finish playing with the b-ball. Anything else?");
stoge=0;
sCinema(oBarkley,"code",cine_0049);
}
