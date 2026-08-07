//if (cou<50 && sound_isplaying(mQuest)=0) sound_play(mQuest);
draw_set_alpha(0.5);
draw_set_color(make_color_rgb(random(255),0,0));
draw_rectangle(0,0,321,241,0);
draw_set_alpha(1);
x=min(x+(global.rd*2),160);
y=max(y-(global.rd),160);
cou+=global.rd;
if (cou<250) {
if (dir0=0) image_xscale+=global.rd/20;
else image_xscale-=global.rd/20;
if (image_xscale<-1) dir0=0;
if (image_xscale>.9) dir0=1;
if (dir1=0) image_yscale+=global.rd/20;
else image_yscale-=global.rd/20;
if (image_yscale<-1) dir1=0;
if (image_yscale>1) dir1=1;
} else {
if (sp=0) { sp=0.1; image_xscale=1; image_yscale=1; }
}
if (cou>300) { 
if (sp=0.1) { sp=1; sound_play(mBoing); }
image_yscale=0.8+random(0.4); 
}
if (cou>400) instance_destroy();
draw_sprite_ext(sDimensionWarning,0,x,120,image_xscale,1,0,c_white,1);
draw_sprite_ext(sDimensionErotic,0,160,y,.9,image_yscale,0,c_white,1);

