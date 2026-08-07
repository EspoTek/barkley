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
//port: the original set oTitle0.image_alpha=1 here, so pre-formed entries (quit
//from a season, splash skip, oOntop) arrived with the menu already open and the
//blip on NEW SEASON -- one press picked it instantly. The attract path is
//two-stage (a press summons the menu, a second press operates it), and the menu
//should behave the same on every entry: leave it hidden here, and oTitle0's own
//Step reveals it on the first fresh keypress.
oIntror4.image_alpha=1;
oIntror4a.image_alpha=1;
image_alpha=1;
with (oIntror5) instance_destroy();
}
if (sA("check",mSpace)=0) sA("loop",mSpace);
