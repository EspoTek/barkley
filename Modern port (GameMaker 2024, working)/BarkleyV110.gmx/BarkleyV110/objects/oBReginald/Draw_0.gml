event_inherited();
if (view_current!=0 || stop=1) exit;
if (force=0) draw_sprite_ext(sprite_index,13,x,y,image_xscale,image_yscale,image_angle,col,max(0,alp-.5));
if (shadow=1) {
draw_sprite_general(sBSpire,0,0,0,35,52-smt,target.x-17,target.y-10+smt,1,1,image_angle,col,col,col,col,alp);
}
if (oou!=-1) {
oou=min(1,oou+0.05);
draw_sprite_ext(sprite_index,10,x,y-60,oou,oou,image_angle,col,alp);
}

draw_sprite_ext(sprite_index,img,x,y,image_xscale,image_yscale,image_angle,col,alp);
event_user(15);
