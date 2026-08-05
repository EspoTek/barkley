var tttmp;
if (view_current!=0) exit;
px=0; py=0; sx=0; sy=0;
if (hilight=1) draw_sprite(sArrower,0,x,fy);
if (selecte=1) draw_sprite_ext(sArrower,1,x,fy,1,1,0,c_white,.5);
if (won!=0) {
if (_vp>0) {
sprite_index=cele;
image_speed=0.2;
}
exit;
}

if (kill!=0) {
if (kex=0 && enemy=1) { 
kex=1; cut=floor(random(2)); 
if (cut=1) sS(mKillcut); else {
if (floor(random(2))) sS(mKillfade); 
else { { tttmp=instance_create(x-sprite_xoffset,y-sprite_yoffset,oBExplode); tttmp.master=id; } sS(mKillbake); }
}
}
if (enemy=1 && cut=0) {
alp-=0.05;
if (alp<0) instance_destroy();
exit;
} else if (cut=0) { sprite_index=deads; defending=0; shake=0; exit; }
}

if (cut!=0) {
xfx=x-sprite_xoffset;
yfy=y-sprite_yoffset;
alp=abs(((1/(sprite_width/2))*min(cut,sprite_width/2))-1);
draw_sprite_part_ext(sprite_index,1,0,0,sprite_width,sprite_height/2,xfx-cut,yfy,1,1,c_white,alp);
draw_sprite_part_ext(sprite_index,1,0,sprite_height/2,sprite_width,sprite_height/2,xfx+cut,yfy+sprite_height/2,1,1,c_white,alp);
cut+=2+(cut/10);
if (cut>sprite_width/2) instance_destroy();
stop=1;
exit;
}

if (c_slowed=1 && doing=-1) {
image_speed=0.05;
}

if (c_parkinsons=1) {
px=-1+random(2);
py=-1+random(2);
x+=px;
y+=py;
}

if (c_aspergers=1 && doing=-1 && attack=0) {
aou-=1-(c_slowed/2);
if (aou<0) { 
if (enemy=0) {
aou=floor(random(3));
if (aou=0) sprite_index=runs;
if (aou=1) sprite_index=defend;
if (aou=2) sprite_index=hurts;
//image_index=floor(random(100));
}
image_index=floor(sprite_get_number(sprite_index));
aou=8+random(10); 
}
}

if (c_stroke=1 && doing=-1 && attack=0) {
if (enemy=0) { sprite_index=deads; shake=0; }
else { image_angle=90; s_s=1; }
} else if (enemy=1 && s_s=1) { image_angle=0; s_s=0; }

if (c_fouled=1 && running=0) image_index=0;

if (shake>0) {
c_stroke=0; //added
shake-=1;
sx=-(shake/2)+random(shake);
sy=-(shake/2)+random(shake);
x+=sx;
y+=sy;
if (enemy=1 || noshake=1) img=0;
else if (d_s=0) { d_s=1; r_s=sprite_index; sprite_index=hurts; }
} else if (enemy=0) {
//if (sprite_index=hurts && c_aspergers=0) { sprite_index=r_s; }
if (sprite_index=hurts && c_aspergers=0 && d_s=1) { sprite_index=r_s; }
d_s=0;
}

if (defending=1) {
if (c_stroke=0) sprite_index=defend;
}

if (col_use!=-1 && col_duration>0) {
col_duration-=1;
col=merge_color(col_use,make_color_rgb(random(255),random(255),random(255)),col_stray);
} else col=c_white;

if (c_diabetes=1) col=merge_color(col,c_fuchsia,0.5);
if (c_montezuma=1) col=merge_color(col,c_olive,0.5);
