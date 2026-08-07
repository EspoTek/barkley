event_inherited();
if (view_current!=0 || stop=1) exit;
if (doing=0) {
draw_sprite_ext(sBWhistle,8,x,y,1,1,0,col,alp);
draw_sprite_ext(sBWhistle,7,x,y,scl,scl,0,col,alp);
draw_sprite_ext(sBWhistle,6,x,y,1,1,0,col,alp);
} else if (doing=2) {
draw_sprite_ext(sBWhistle,8,x,y,1,1,0,col,alp);
draw_sprite_ext(sBWhistle,7,x,y,1,1,rot,col,alp);
draw_sprite_ext(sBWhistle,6,x,y,1,1,0,col,alp);
} else {
draw_sprite_ext(sBWhistle,floor(img),x,y,image_xscale,image_yscale,image_angle,col,alp);
}
event_user(15);
