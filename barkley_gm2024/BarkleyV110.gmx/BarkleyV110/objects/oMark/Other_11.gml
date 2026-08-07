global.dialog=1;
if (sItem("F.I.N.A.L. G.U.N.")) {
if (sOvar(object_index,-1)=-1) {
sCinema(oBarkley,"dialog","Mark:\\Something is different... This exceptional feeling... The F.I.N.A.L. G.U.N.! That's it! You must give it to me! I must have it!");
} else {
sCinema(oBarkley,"dialog","I got that gun you wanted. Now what's in it for me?",1);
sCinema(oBarkley,"dialog","Mark:\\Outstanding! It's even more magnificent in person... Right, like I mentioned before, you hand it over, and you shall get a priceless item in return.");
}
sCinema(oBarkley,"dialog","Choose:",0,"Here you go.","Nah, I think I'll hold onto it instead.");
sCinema(oBarkley,"code",cine_0421);
} else if (sOvar(object_index,-1)=2) {
sCinema(oBarkley,"dialog","Mark:\\I cannot be disturbed! I must intensely study this gun. Humanity depends on it...");
} else if (sOvar(object_index,-1)=-1) {
sOvar(object_index,1);
sCinema(oBarkley,"dialog","Mark:\\Psst, I hear a rumor that you're going to the old Spalding building. Is that true?");
sCinema(oBarkley,"dialog","What's it to you, chump?",1);
sCinema(oBarkley,"dialog","Mark:\\Gun's... Let me elaborate. I'm what you call a "+"\"Gun"+"'"+"sbraster\""+", a collector and afficionado of gun's. In fact, you could go so far as to say that all I care about is gun's.");
sCinema(oBarkley,"dialog","Get to the point.",1);
sCinema(oBarkley,"dialog","Mark:\\Ah, but what is the point..? But enough of my enlightened musings, I am sure you want to know what my extreme love of gun's has to do with you. You see, it has come to my attention that a particular item of note to gun's enthusiasts such as myself is currently inside the old Spalding Building. It's name: The F.I.N.A.L. G.U.N. Some say it was a prototype that Spalding was building before it disappeared in the Purge. Other say it was made by the devil himself. Heh, I don't care. I only care about gun's...");
sCinema(oBarkley,"dialog","You want us to get this gun for you, huh? What's in it for us?",1);
sCinema(oBarkley,"dialog","Mark:\\The knowledge that you have aided the premiere gun'sbraster should be enough to slake your... primitive desire for a reward.");
sCinema(oBarkley,"dialog","Fuck you, buddy. No deal.",1);
sCinema(oBarkley,"dialog","Mark:\\Okay, okay. I'll give you something nice. Something rare and valuable, okay?");
sCinema(oBarkley,"dialog","That's more like it. We'll get you this... F.I.N.A.L. G.U.N. or whatever.",1);
sCinema(oBarkley,"dialog","Mark:\\...anything for gun's.");
} else {
sCinema(oBarkley,"dialog","Mark:\\Have you gotten the F.I.N.A.L. G.U.N. yet?");
sCinema(oBarkley,"dialog","Not yet.",1);
sCinema(oBarkley,"dialog","Mark:\\I'm not paying you to stand around! This will be duly noted when time comes for payment.");
}
