//sound_volume(mBWater,0.5+(hhh/45));
sound_volume(mBWater,hhh/90);
if (intensity>hhh) hhh+=dspd;
if (intensity<hhh) hhh-=dspd;
if (abs(intensity-hhh)<=dspd) hhh=min(90,intensity);
if (hhh<=0) instance_destroy();
exit;
hhh=min(90,hhh+0.2);
if (hhh>45) {
lgt-=hhh/30;
if (lgt<0) {
//instance_create(view_xview[0]+random(320),view_yview[0]+140+random(100),oLightbolt);
lgt=40+random(20);
}
}
