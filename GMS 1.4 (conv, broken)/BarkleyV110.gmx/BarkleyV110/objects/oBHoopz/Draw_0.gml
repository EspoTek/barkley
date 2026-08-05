event_inherited();
if (view_current!=0) exit;
if (mov=0) {
if (out!=0) { //14,37 - 
rot=mean(rot,face); //causes gun to not overlap proper from 360 to 0
draw_sprite_ext(sBGun,imgz,x+xo,y+yo,1,1,rot,c_white,1);
}
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,col,alp);
} else if (mov=1) { //52,24
rot=mean(rot,face);
xx=x+lengthdir_x(30,image_angle);
yy=y+lengthdir_y(30,image_angle);
xx=xx+lengthdir_x(17,image_angle-270);
yy=yy+lengthdir_y(17,image_angle-270);
if (out=1) draw_sprite_ext(sBGun,imgz,xx,yy,1,1,rot,c_white,1);
if (stage<9) { if (out=2 || out=2.1) draw_sprite_ext(sBGun,imgz,x+11,y-16,1,1,rot,c_white,1); }
else { if (out=2 || out=2.1) draw_sprite_ext(sBGun,imgz,x-11,y-16,1,1,rot,c_white,1); }
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,col,alp);
} else if (mov=2) { //12,24 - 38,39
rot=mean(rot,face);
xx=x+lengthdir_x(30,image_angle);
yy=y+lengthdir_y(30,image_angle);
xx=xx+lengthdir_x(17,image_angle-270);
yy=yy+lengthdir_y(17,image_angle-270);
if (out!=0 && floor(random(2))=0) draw_sprite_ext(sBGun,imgz,x+xo,y+yo,1,1,rot,c_white,1);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,col,alp);
} else if (mov=3) {
if (stage=0) {
rot=mean(rot,face);
draw_sprite_ext(sBGun,imgz,x-44+3,y-15,1,1,rot,c_white,1);
draw_sprite(sBHoopz1,2,x,y);
} else if (image_index=2) {
draw_sprite_ext(sBHoopzSkill1,2,x,y,image_xscale,1,0,c_white,1);
draw_sprite_ext(sBHoopzSkill1,3,x+3,y+19,image_xscale,1,image_angle,c_white,1);
} else if (out=1) {
rot=mean(rot,face);
draw_sprite_ext(sBGun,imgz,x-30,y-5,1,1,rot,c_white,1);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,col,alp);
} else draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,col,alp);
} else if (mov=-999) { //6,20
if (jammed=1) draw_text(x,y-40,string_hash_to_newline("!jammed!"));
if (reload=0.5) draw_text(x,y-40,string_hash_to_newline("!reload!"));
if (shoot=1) {
rot=mean(rot,face); //causes gun to not overlap proper from 360 to 0
if (back=0) {
draw_sprite_ext(sBGun,imgz,x-44,y-15,1,1,rot,c_white,1);
draw_sprite(sBHoopz1,1,x,y);
} else {
draw_sprite_ext(sBGun,imgz,x-44+3,y-15,1,1,rot,c_white,1);
draw_sprite(sBHoopz1,2,x,y);
}
} else {
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,col,alp);
//draw_sprite(sBHoopzStand,0,x,y);
}
}
img=image_index;
event_user(15);
