global.dialog=1;
if (sOvar(oEventc0,-1)=-1) { //no negotiations
sCinema(oBarkley,"dialog","Mohammed Geniebane:\\Ahh, Charles Barkley, it is good to see you my friend. As you know, the ongoing negotiations concerning the rights of the Duergars has taken up much of my time, leaving time for little else. If you could perhaps end my personal struggle and support the genie cause, I am sure that I could find some way to reward you from my ample genie coffers.",0);
} else if (sOvar(oEventc0,-1)=2) { //genie win
sCinema(oBarkley,"dialog","Mohammed Geniebane:\\You are wise, Charles Barkley, and Square Enix Goya is indebted to you. You can continue to look forward to more quality products thanks to your effort.",0);
} else if (sOvar(oEventc0,-1)=1) { //duergars win
sCinema(oBarkley,"dialog","Mohammed Geniebane:\\We have nothing to talk about, Charles Barkley. I was under the assumption that you were a man of reason but it appears I was wrong. Good day.",0);
} else { //no one
sCinema(oBarkley,"dialog","Mohammed Geniebane:\\I am disappointed that your actions did not benefit the genies as much as they could have. You have set us back dozens, if not baker's dozens of genie years. Still, the damage done was not as bad as it could have been.",0);
}
