event_inherited();
if (view_current!=0 || stop=1) exit;
if (bottle=0.5) draw_sprite_ext(sBBallbrain2,0,x+22,y-12,image_xscale,image_yscale,270,col,alp);
draw_sprite_ext(sprite_index,img,x,y,image_xscale,image_yscale,image_angle,col,alp);
if (bottle=1) draw_sprite_ext(sBBallbrain2,0,x,y,image_xscale,image_yscale,image_angle+270,col,alp);
event_user(15);
