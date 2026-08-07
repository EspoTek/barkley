global.dialog=1;
if (sOvar(oGenie2,-1)=2) {
sCinema(oBarkley,"dialog","Genie:\\They're nice, eh? Unfortunately I was never able to fully utilize them, as my legs atrophied after spending two millenia in a lamp.",0);
} else if (sOvar(oEventc0,-1)=2) {
sOvar(oGenie2,2);
sCinema(oBarkley,"dialog","Genie:\\I thought you were clever, Charles Barkley. Take these Jodhpurs of the Falcon. They'll keep you cozy while excavating donjons.",0);
sCinema(oBarkley,"item","Falcon Jodhpurs",1);
} else {
sCinema(oBarkley,"dialog","Genie:\\Greetings, stranger. I am an ancient genie who has granted many thousands of wishes over the ages. Perhaps I could grant yours? I was rubbed from a lamp many years ago and my mission is to steal civil rights from Duergars. Perhaps you could call this racism, but that is one of the main goals of all genies. Lately, though, it seems that our efforts to fully dehumanize the Duergars have been impeded by their blasted strike! If you could somehow aid our quest of intolerance I am sure I could give you my Jodhpurs of the Falcon.",0);
}
