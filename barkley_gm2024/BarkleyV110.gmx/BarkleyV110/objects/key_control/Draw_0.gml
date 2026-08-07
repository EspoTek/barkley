draw_sprite(key_controlbox,0,x,y);
trr=key_recognizer(global.cpref[class]);
ff=global.cpref[class];
if (active=0) sFont(Courier8,c_white,1);
else sFont(Courier8,c_red,1);
draw_text(x+48,y+0,string_hash_to_newline("" + trr)); //43
sFont(Courier8,c_white);
draw_text(x-40,y+0,string_hash_to_newline(name));

