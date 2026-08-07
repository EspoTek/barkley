if (global.selected=0) {
if (global.gold<25) sCinema(oHundley,"dialog","You're not a high enough roller to play at Hundley's Casino. You need at least 25 neo-shekels.",1);
else {
instance_create(0,0,oBonesMenu);
sCinema(oHundley,"cond",cine_0151);
}
} else {
sCinema(oHundley,"dialog","Too scared to lose? I don't blame you, I wouldn't bet against me either if I were you.",1);
}
