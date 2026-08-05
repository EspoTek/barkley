global.dialog=1;
www=sOvar(object_index,-1);
//1 and 2 are choosers for give or reqrite, 3 is done basic, 4 is done bad, 5 is done good, 6 is after done basic OR BAD(he in inn in 5)
//1=baisc,2=rewrite,3=rebad,4=regood,5=delbasic,6=delbad,7=done,8=bestever
if (www=1 || www=2) {
sCinema(oBarkley,"dialog","Eric:\\Have you given her my poem yet?");
sCinema(oBarkley,"dialog","Uh, not yet. Just a second, ok?",1);
} else if (www=5 || www=6) {
sOvar(object_index,7);
sCinema(oBarkley,"dialog","She says thanks, and that she'll come by later.",1);
sCinema(oBarkley,"dialog","Eric:\\She's coming by? Thank you so much Barkley, thank you so much Balthios. This is really the best day of my life. The woman of my dreams is coming to talk to me, and she liked my poetry! Why did I ever doubt myself? Silly Eric! Anyway, here is your reward, as agreed. I hope it serves you well.");
if (www=5) { sItem("gold",600); sCinema(oBarkley,"dialog","Received 600 Neo-Shekels!"); }
else { sItem("gold",400); sCinema(oBarkley,"dialog","Received 400 Neo-Shekels!"); }
sCinema(oFollower0,"dialog","Thank you, Eric. I hope good fortune continues to bless you so.",1);
} else if (www=7) {
sCinema(oBarkley,"dialog","Eric:\\Once again, thank you sirs.");
}
