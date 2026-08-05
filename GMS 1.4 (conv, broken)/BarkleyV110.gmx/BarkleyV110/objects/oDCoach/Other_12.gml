if (stoge=-1) {
stoge=0;
sCinema(oBarkley,"dialog","Let's talk shop. What do you need help with?",0,"Feeding the b-ball","Watering the b-ball","Training the b-ball","Leave");
sCinema(oBarkley,"code",cine_0051);
exit;
}
if (stoge=0) {
stoge=global.selected+1;
if (global.selected=0) {
sCinema(oBarkley,"dialog","Okay, what do you need to know about?",0,"Jordan Greens","Ewing Greens","Chamberlain Greens","Back");
sCinema(oBarkley,"code",cine_0051);
} else if (global.selected=1) {
sCinema(oBarkley,"dialog","Okay, what do you need to know about?",0,"Gatorade A.M.","Gatorade X-Factor","Gatorade Fierce","Back");
sCinema(oBarkley,"code",cine_0051);
} else if (global.selected=2) {
sCinema(oBarkley,"dialog","Okay, what do you need to know about?",0,"Dribbling","Shooting","Passing","Back");
sCinema(oBarkley,"code",cine_0051);
} else if (global.selected=3) {
sCinema(oBarkley,"dialog","Matt Guokas:\\Hope that helped, Barkley. That's what I'm here for. If you've got anymore questions, be sure to stop by and ask.");
sCinema(oBarkley,"dialog","Sure will, coach.",1);
}
} else if (stoge=1) { //feed
if (global.selected=3) { stoge=-1; sCinema(oBarkley,"code",cine_0051); exit; }
if (global.selected=0) sCinema(oBarkley,"dialog","Matt Guokas:\\Jordan greens are the cheapest food you can feed your b-ball. They raise its strength and vigor, but decrease its wisdom by a little bit.");
if (global.selected=1) sCinema(oBarkley,"dialog","Matt Guokas:\\Ewing greens offer a good medium between cheap and expensive food. They raise your b-ball's speed and strength, but decrease its vigor a little bit.");
if (global.selected=2) sCinema(oBarkley,"dialog","Matt Guokas:\\Chamberlain greens are the most expensive food you can buy your b-ball. They raise wisdom and strength, and taste delicious too!");
stoge=0;
sCinema(oBarkley,"code",cine_0052);
} else if (stoge=2) { //feed
if (global.selected=3) { stoge=-1; sCinema(oBarkley,"code",cine_0051); exit; }
if (global.selected=0) sCinema(oBarkley,"dialog","Matt Guokas:\\Gatorade A.M. is the cheapest drink you can give your b-ball. It raises wisdom and vigor but lowers speed.");
if (global.selected=1) sCinema(oBarkley,"dialog","Matt Guokas:\\Gatorade X-Factor costs less than Fierce but more than A.M. It will raise your ball's speed and strength, but decrease its vigor a little.");
if (global.selected=2) sCinema(oBarkley,"dialog","Matt Guokas:\\Gatorade Fierce is the most expensive drink you can buy your b-ball. It will raise its wisdom, speed, and strength. Quenches thirst too.");
stoge=0;
sCinema(oBarkley,"code",cine_0053);
} else if (stoge=3) { //feed
if (global.selected=3) { stoge=-1; sCinema(oBarkley,"code",cine_0051); exit; }
if (global.selected=0) sCinema(oBarkley,"dialog","Matt Guokas:\\Dribbling your b-ball will raise its strength, but it will tire it out real fast. Do it too much and it'll get grumpy.");
if (global.selected=1) sCinema(oBarkley,"dialog","Matt Guokas:\\Every b-ball likes to be shot. It'll raise your b-ball's vigor and speed but it will also tire it out quickly.");
if (global.selected=2) sCinema(oBarkley,"dialog","Matt Guokas:\\Even though most b-balls don't like to be passed, it's a necessary part of training. It will raise wisdom, but also make your ball angry.");
stoge=0;
sCinema(oBarkley,"code",cine_0054);
}
