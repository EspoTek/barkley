global.dialog=1;
www=sOvar(object_index,-1);
if (www=-1) {
sOvar(object_index,2);
sCinema(oBarkley,"dialog","Vulture:\\Halt!* Who are you and why are you here?");
sCinema(oBarkley,"dialog","What...* What are you?",1);
sCinema(oFollower0,"dialog","Charles!",1);
sCinema(oBarkley,"dialog","Vulture:\\Heh, I can forgive your ignorance*.*.*. This time. I am a human being, just like you, but I have shed the entrapments of my human form and have embraced my animal side. On the surface world I was called Aaron Barber, but here I am known as Aethios Silverwind, vulture master of the night. We moved here because of the persecution up above. We never knew that they would hurt us like that after the surgery.");
sCinema(oBarkley,"dialog","Surgery? Oh...* You're those god damned animal people, aren't you?",1);
sCinema(oFollower0,"dialog","Barkley! I apologize, Sir Aethios. We're travelers looking for the Cyberdwarf. I have heard he lives in this village and we need to see him.",1);
sCinema(oBarkley,"dialog","Aethios Silverwind:\\Cyberdwarf, hmmm...* Ah, the newcomer? Yes, he lives here but we hardly see him. He's a real recluse, and I think it's because he's ashamed of his appearance. We don't judge here.");
sCinema(oBarkley,"dialog","Get out of my way.",1);
sCinema(oVulture,"move","right");
sCinema(oVulture,"move","right");
sCinema(oVulture,"face","left");
sCinema(oBarkley,"move","up");
sCinema(oBarkley,"move","up");
sCinema(oBarkley,"face","right");
sCinema(oBarkley,"dialog","Aethios Silverwind:\\I'll...* I'll be watching you...");
} else if (www=1) {
sOvar(object_index,2);
sCinema(oBarkley,"dialog","Aethios Silverwind:\\What do you want?");
sCinema(oBarkley,"dialog","Move.",1);
sCinema(oVulture,"move","right");
sCinema(oVulture,"move","right");
sCinema(oVulture,"face","left");
sCinema(oBarkley,"dialog","Aethios Silverwind:\\Be glad I'm graced with vulture-like patience...");
} else {
sCinema(oBarkley,"dialog","Aethios Silverwind:\\Leave me alone.");
}
