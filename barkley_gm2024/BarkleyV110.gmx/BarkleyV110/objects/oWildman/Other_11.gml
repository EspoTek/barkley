global.dialog=1;
hhh=sOvar(oWildman,-1);
if (hhh=2) {
sCinema(oWildman,"dialog","Step off, pond scum.",1);
} else if (hhh=1) {
sCinema(oWildman,"dialog","...Good luck.",1);
} else {
sCinema(oWildman,"dialog","???|Wildman:\\<cough>... Get away from me.");
sCinema(oBarkley,"dialog","Suit yourself, chump. See -- wait... Do I know you?",1);
sCinema(oWildman,"dialog","???|Wildman:\\B... Barkley? ");
sCinema(oBarkley,"dialog","Wildman... You're as pale as a ghost now.",1);
sCinema(oWildman,"dialog","I'm ashamed to say we used to jam together... <cough>... I wouldn't be surprised if you forgot the meaning of that word.",1);
sCinema(oBarkley,"dialog","Why you gotta say shit like that man? What changed since we last met that would make you think something like that?",1);
sCinema(oWildman,"dialog","Get off your Clispaeth damned high horse Barkley. You killed the only thing that ever meant a damn to me. <cough> You cursed us all, Barkley. You cursed us all.",1);
sCinema(oFollower0,"dialog","Charles, there are more pressing issues to address right now. I suggest --",1);
sCinema(oBarkley,"dialog","No, Balthios. I gotta sort this out. Look, I know I messed up. I can't change that, but I'll be damned if anyone tries to stop me from making things better.",1);
sCinema(oWildman,"dialog","You make me sick... In fact, you're the very reason I was infected with the negative B-Ball energies. Now, this place is a wasteland. <cough>... B-Ball was always there for you when you needed it most. Where were you when B-Ball needed you most? <cough>... Running like a coward, you pond scum.",1);
sCinema(oBarkley,"dialog","You don't know what it's like. You'll never know what it's like.",1);
sCinema(oWildman,"dialog","You're right, I won't. I'd never become the monster you are.",1);
sCinema(oBarkley,"dialog","I... I don't know what to tell you.",1);
sCinema(oWildman,"dialog","Hardly surprising... <cough>... You never even had the guts to say you're sorry.",1);
sCinema(oBarkley,"dialog","Choose:",0,"Walk away.","Apologize.");
sCinema1(oBarkley,"dialog","I can't change the past. I... I know that. There's not a gatdam day that goes through my head where I don't think about everything being different. You know what? What does livin' in the past do? Not a whole lot. All I have to look forward to is the future, no matter how bleak it is. I'm sorry Wildman. I miss jamming 'till the sun went down. I miss making a huge slam in front of thousands of screaming fans. B-Ball may be banned now... But I'm gonna change that, mark my words. Things are only going to get better from here on in.",1);
sCinema1(oWildman,"dialog","...Maybe you have changed. <cough>... Only time will tell...",1);
sCinema2(oBarkley,"dialog","You ain't worth my time. I gots better things to do.",1);
sCinema(oBarkley,"code",cine_0488);
sCinema(oBarkley,"cond",cine_0404);
sCinema(oBarkley,"code",cine_0489);
}
