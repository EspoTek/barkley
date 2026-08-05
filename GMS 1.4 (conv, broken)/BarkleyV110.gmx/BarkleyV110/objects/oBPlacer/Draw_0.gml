if (keyboard_check(vk_shift)) exit;
depth=slav.depth+1;
if (state=0) draw_sprite(sprite_index,0,x,y);
else draw_sprite(sprite_index,1,x,y);
