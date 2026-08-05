draw_sprite(sprite_index,image_index,x,y);
sFont(Courier8,c_white,1);
if (doall=-1) draw_text(x+75,y+5,string_hash_to_newline("SET KEYS"));
else if (doall<=6) draw_text(x+75,y+5,string_hash_to_newline("Press the key for " + global.cserv[doall].name));
