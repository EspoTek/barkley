event_inherited();
if (view_current!=0) exit;
event_user(13);
if (air=1) draw_sprite(sBBarkleyShadow,0,x,ay);
kk=floor(image_index);
if (ok!=kk) { ane=random(360); ok=kk; }
dk=kk+1;
if (dk>sprite_get_number(sprite_index)-1) dk=0;
if (sprite_index=sBBarkleyEmpty) noball=1; else noball=0;
if (noball=0) {
if (dualb=1) {
draw_sprite_ext(sBBall2,7,x+bx[dk],y+by[dk],1,1,ane,c_white,1);
draw_set_blend_mode(bm_add);draw_sprite(sBBallGlow,7,x+bx[dk],y+by[dk]);draw_set_blend_mode(bm_normal);
}
if (after=0) draw_sprite_ext(sBBall2,bal,x+bx[kk],y+by[kk],1,1,ane,c_white,1);
}
draw_sprite_ext(sprite_index,kk,x,y,image_xscale,image_yscale,image_angle,col,alp);
if (noball=0) {
if (after=1) draw_sprite_ext(sBBall2,bal,x+bx[kk],y+by[kk],1,1,ane,c_white,1);
if (duala=1) {
draw_sprite_ext(sBBall2,7,x+bx[dk],y+by[dk],1,1,ane,c_white,1);
draw_set_blend_mode(bm_add);draw_sprite(sBBallGlow,7,x+bx[dk],y+by[dk]);draw_set_blend_mode(bm_normal);
}
}
img=kk;
event_user(15);
