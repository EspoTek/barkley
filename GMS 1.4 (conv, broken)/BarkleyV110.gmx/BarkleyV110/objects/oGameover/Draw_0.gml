image_speed=global.rd/2;
draw_sprite_ext(sGameover0,0,160-(28),y,1,1,0,c_white,image_alpha);
draw_sprite_ext(sDialogBlip,image_index,160-(28)+5,y+18+(pos*13),1,1,0,c_white,image_alpha);
draw_set_alpha(image_alpha);
sFont(Courier8,c_white,fa_center);
draw_text_ext(160,10,string_hash_to_newline(global.diemessage),-1,300);
draw_set_alpha(1);
