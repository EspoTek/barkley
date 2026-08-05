if (type=0) {
ggg=floor(random(5));
if (ggg=0) msg="Brace youself for my kamikaze roll! Unghh!";
if (ggg=1) msg="-blows on dice- You're in for it this time!";
if (ggg=2) msg="Heh heh, you don't know who you're up against do you?";
if (ggg=3) msg="They don't call me the Bones Grandmaster for nothing, buster!";
if (ggg=4) msg="Your neo-shekels are as good as mine! Hyah!";
sCinema1(oHundley,"dialog",msg,1);
sCinema1(oHundley,"code",cine_0005);
sCinema1(oHundley,"code",cine_0006);
} else if (type=1) {
ggg=floor(random(5));
if (ggg=0) msg="Never bet against the Hundley.";
if (ggg=1) msg="Is that all you got, buster?";
if (ggg=2) msg="I warned you, but you didn't listen.";
if (ggg=3) msg="Some say I'm a neo-shekel magnet. I'd have to agree with them.";
if (ggg=4) msg="Hah hah hah! Ahahaha ha ha ha!";
sCinema1(oHundley,"dialog",msg,1);
} else {
ggg=floor(random(3));
if (ggg=0) msg="A tie is the best you'll ever do against I, Hundley, the master of dice throwing.";
if (ggg=1) msg="Hrmph, a stalemate...";
if (ggg=2) msg="Don't waste my time, buster. Draws mean nothing to me.";
sCinema1(oHundley,"dialog",msg,1);
}
oCinema1.enable=1;
