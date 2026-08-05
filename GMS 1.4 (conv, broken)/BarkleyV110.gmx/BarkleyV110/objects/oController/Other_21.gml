sItem("Genie Lamp",-1);
if (global.selected=0) {
for (temp=0; temp<5; temp+=1) {
 global.char_hp[temp]+=5;
 global.char_zp[temp]+=5;
 global.char_chp[temp]=global.char_hp[temp];
 global.char_czp[temp]=global.char_zp[temp];
 global.char_attack[temp]+=5;
 global.char_defense[temp]+=5;
 global.char_footwork[temp]+=5;
 global.char_zauberacity[temp]+=5;
}
sEquipped();
sCinema(oBarkley,"dialog","I wish for more power.",1);
sCinema(oBarkley,"dialog","Kazaam:\\So you want more power? Have no worries, this won't take an hour. Slam dunks, pivots, rebounds, and smarts, I'll increase all of these stats off of the charts. Kazaam! And I'm out of this place.",0);
sCinema(oBarkley,"code",cine_0037);
sCinema(oBarkley,"dialog","Gained +5 to VP, BP, Power, Guard, Brain, and Speed for all party members!");
} else if (global.selected=1) {
sItem("gold",5000); 
sCinema(oBarkley,"dialog","I wish for more wealth.",1);
sCinema(oBarkley,"dialog","Kazaam:\\You wanna be rich? That ain't a hitch. Go from zero to hero in a flash. What's that you say? All of a sudden, you got $5000 in cash! Kazaam! And I'm out of this place.",0);
sCinema(oBarkley,"code",cine_0037);
sCinema(oBarkley,"dialog","$5000 magically appeared in your wallet!");
} else if (global.selected=2) {
sCinema(oBarkley,"dialog","I want more knowledge.",1);
sCinema(oBarkley,"dialog","Kazaam:\\Listen up and listen good, cuz I ain't gonna waste breath. If you act like a no-gooder, selfish and unjust, you're gonna end up in a temple of death. Act like a chump and when you perish, the deathtemple is what you'll least cherish. Kazaam! And I'm out of this place.",0);
sCinema(oBarkley,"code",cine_0037);
sCinema(oFollower0,"dialog","Hmmm, I'm not sure what this means Barkley. I've heard of a Deathtemple in hell, but it's only a myth. Supposedly those who have acted without any moral regard in their lives end up there as a punishment. While I personally do not believe such a place exists, these myths remind us to live virtuously.",1);
sCinema(oBarkley,"dialog","It's something to think about, I guess.",1);
}
