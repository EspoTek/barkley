event_inherited();
x=5;
y=0;
yy=0;
img=10;
spl=80;
if (global.titleform=0) {
instance_create(0,0,oTextFade);
oTextFade.visible=1;
oIntror6.image_alpha=1;
oIntror2.ll=999;
oIntror2.visible=1;
oIntror3.visible=1;
//port: the original set oTitle0.image_alpha=1 here, making the menu interactive
//on the room's first step -- safe in GM6 because keyboard_clear suppressed a held
//key until re-press and the rt_* transitions blocked for a second anyway. With
//instant transitions, arriving from a quit (oStartmenu), a splash skip
//(oIntror0/1) or oOntop with the select key still down started a new season
//before the menu was ever seen. reveal=3 instead lets oIntror4's inherited Step
//fade the menu in (~0.7s); oTitle0's Step is gated on image_alpha!=1, so the
//menu is visibly forming and provably non-interactive until the fade completes.
oTitle0.reveal=3;
oIntror4.image_alpha=1;
oIntror4a.image_alpha=1;
image_alpha=1;
with (oIntror5) instance_destroy();
}
if (sA("check",mSpace)=0) sA("loop",mSpace);
