sOvar(oIntro15,1);
if (global.memposs!=oExit210) {
with (oBalthios)t=2;
oBarkley.t=0;
oBarkley.x=736-4;
oBarkley.y=576;
} else {
with (oBalthios)t=0;
oBarkley.t=2;
oBarkley.x=608-4;
oBarkley.y=432-32;
}
//608,432
sOvar(oNote0b,1); //allow note get
with (oHoopz)t=1;
with (oCyberdwarf)t=3;
global.nofollow=1;
with (oFollower) x=-999;
sCinema(oFollower0,"dialog","Seems like we're at an impasse. It doesn't seem like we're going anywhere until we pay the toll at the gate, large as it may be.",1);
sCinema(oBarkley,"dialog","It's 5000 neo-shekels, Balthios. There's no way in hell I'd pay these thugs a damn thing, and I definitely wouldn't pay 'em $5000. It's extortion, and I'm not gonna tolerate that shit. I say we go rough up that punk at the gate. And hell we should probably go teach this Dr. Allard and all of his goons a lesson while we're at it.",1);
sCinema(oFollower0,"dialog","Charles, you can't just go around beating on anyone and everyone you want. What they're doing isn't right, but-",1);
sCinema(oBarkley,"dialog","You're damn right it isn't. People come down to these sewers to escape from shit on the surface, Balthios. And once they make it down here they've got to deal with this Allard and his thugs. Forget it. I'm not going to put up with it.",1);
sCinema(oFollower0,"dialog","So... you're finally showing some sympathy for the sewer-dwellers.",1);
sCinema(oBarkley,"dialog","I meant I'm not going to put up with it when it affects me and my son. It's hard enough to make ends meet in the post-cyberpocalypse, and that money could be put to use, not wasted on some bullshit toll.",1);
sCinema(oFollower3,"dialog","Dad, it's ok. I mean, let's just give 'em the money. It's fine. I don't want to see anybody get hurt. We can always spend less money.",1);
sCinema(oBarkley,"dialog","Hoopz, I've taught you that sometimes people need to stand up for what's right, haven't I? Well this is one of those times.",1);
sCinema(oFollower2,"code",cine_0200);
sCinema(oFollower0,"dialog","Cyberdwarf, what's wrong?",1);
sCinema(oFollower2,"dialog","Hmmm? Nothing, nothing at all. We just need to get a move on. The Spalding factory is our goal. Whatever you decide to do about this, do it quickly. We don't have the time to squander on these petty conflicts. B.L.O.O.D.M.O.S.E.S. must be stopped.",1);
if (sOvar(oSuitRufus,-1)=1) { sOvar(oSuitRufus,2); sCinema(oFollower0,"dialog","You heard it, Charles. You decide what we're going to do. Either we pay the toll, or pay a visit to whoever you like. Dr. Allard or the gate guard. You also might want to find out who that 'Rufus' in the note is. All we know is a name, but perhaps looking into it could give us something we could use. In any case, choose quickly please.",1); }
else sCinema(oFollower0,"dialog","You heard it, Charles. You decide what we're going to do. Either we pay the toll, or pay a visit to whoever you like. Dr. Allard or the gate guard. In any case, choose quickly please.",1);
sCinema(oBarkley,"tint",c_black,1);
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"code",cine_0193);
sCinema(oBarkley,"tint",c_black,0);
