//Use sillhoute until you know its larry
global.dialog=1;
if (global.scheme[0]=0) {
global.skipper=2;
global.scheme[0]=1;
face=7;
name="Priest";
sCinema(oLarry,"dialog","Charles, I uh, I haven't seen you in here since the...",1);
sCinema(oBarkley,"dialog","Yeah, Larry. That was a long time ago.",1);
if (global.victorian=0) sCinema(oBarkley,"code",cine_0415);
else sCinema(oBarkley,"code",cine_0416);
sCinema(oLarry,"dialog","I don't know what to tell you, Charles. I'm sorry. I know it wasn't your fault.",1);
sCinema(oBarkley,"dialog","I don't need your god damned pity, Larry, acting like you give a damn just 'cuz you're a priest now. You don't know shit about what happened and you got no business acting all buddy buddy just 'cuz we used to be friends. Shit's changed, Bird. This ain't the golden age of b-ball anymore. You more than anyone should know this.",1);
sCinema(oBarkley,"wait",1.4);
sCinema(oLarry,"dialog","You think I sold out, Barkley. You think I sold out because I'm not absolutely miserable like you.",1);
sCinema(oBarkley,"dialog","You got no place to say that shit, Bird. You think it's fucking easy to raise a kid on my own? You think it's easy to be alone now when I need Maureen more than ever, Bird?",1);
sCinema(oLarry,"dialog","Charles, keep your voice down, this is a house of God!",1);
sCinema(oBarkley,"dialog","You know damn well it was my fault, Larry. You know all this shit is my fault and you got no place to say otherwise. God damnit man.",1);
sCinema(oBarkley,"wait",3.3);
sCinema(oLarry,"dialog","Why'd you come here Charles? You didn't come here for this.",1);
sCinema(oBarkley,"wait",2.7);
sCinema(oBarkley,"dialog","I... I don't know, Larry. I just kind of wandered in here. Maybe I was thinking about her, I don't know.",1);
sCinema(oLarry,"dialog","She was a woman of Clispaeth, Charles.",1);
sCinema(oBarkley,"dialog","Clispaeth? God? You think I can believe in that shit now? After all that's happened, you think I can just pray to Clispaeth and everything will be okay? Shit's changed too much.....",1);
sCinema(oBarkley,"wait",3.7);
sCinema(oBarkley,"dialog","I'm uh... I'm gonna go now.",1);
sCinema(oLarry,"dialog","Barkley.",1);
sCinema(oBarkley,"dialog","What?",1);
sCinema(oBarkley,"wait",1.8);
sCinema(oLarry,"dialog","Don't do anything rash.",1);
sCinema(oBarkley,"wait",2.8);
sCinema(oBarkley,"dialog","Yeah, Larry. Yeah.",1);
sCinema(oBarkley,"code",cine_0014);
} else {
sCinema(oLarry,"dialog","My condolences, Mr. Barkley...",1);
}
