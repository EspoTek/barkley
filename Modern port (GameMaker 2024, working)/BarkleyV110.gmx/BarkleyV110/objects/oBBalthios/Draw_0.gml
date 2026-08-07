event_inherited();
if (view_current=0) {
if (flame=1) {
draw_sprite(sBBalthiosSkill4,0,x,y);
draw_sprite_ext(sBBalthiosSkill4a,0,x-16,y-10,1,1,ang,c_white,1);
exit;
}
if (slide=0) {
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,col,alp);
img=image_index;
event_user(15);
} else {
_dir=point_direction(x,y,_ox,_oy);
_scl=point_distance(_ox,_oy,x,y)/28;
if (_ox<x) {
draw_sprite_ext(sBBalthiosShadow,0,x,y,-_scl,1,_dir-180,c_white,1);
draw_sprite_ext(sprite_index,image_index,x,y,-1,1,_dir-180,col,1);
} else {
draw_sprite_ext(sBBalthiosShadow,0,x,y,_scl,1,_dir,c_white,1);
draw_sprite_ext(sprite_index,image_index,x,y,1,1,_dir,col,1);
}
}
}
//
_ox=x;
_oy=y;
