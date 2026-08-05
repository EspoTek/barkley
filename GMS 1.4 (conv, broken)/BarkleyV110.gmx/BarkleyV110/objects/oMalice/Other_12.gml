if (global.selected=0) {
sCinema(oBarkley,"dialog","Sha'kwan Dwarfmalice:\\Aye, aye. I could tell from the compassion in your voice that you're no foe. Even if you told me you were a foe, I wouldn't believe you. I may be a Duergar, my friend, but I'm not gullible.");
} else if (global.selected=1) {
global.shake=5;
instance_create(0,0,oDuergarface);
sCinema(oBarkley,"wait",0.5);
sCinema(oBarkley,"cond",cine_0418);
sCinema(oBarkley,"dialog","Sha'kwan Dwarfmalice:\\You had me going there for a minute, I really thought you were a foe. I suppose since you're not my enemy I can tell you my story...");
}
sCinema(oBarkley,"dialog","Sha'kwan Dwarfmalice:\\I used to be the strongest Duergar in all the chup mines. Heh, they called me "+"\"The Bastard of Muscles\""+" and that's just what I was. I could lift two Duergars over my head at the same time and punch through both friend and foe. But then I went blind. My muscles atrophied and I could do nothing but knit patriotic quilts to keep myself warm. But now that the genies have outlawed all patriotic quilts I can't even do the one thing I have left. Grysh'tarn (our ghastly Duergar deity) bless this land and people and give me the courage to continue without my patriotic quilts...");
