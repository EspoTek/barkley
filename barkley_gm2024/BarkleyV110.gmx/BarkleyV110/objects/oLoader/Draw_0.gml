//254 47 62
x=1.5;
y=0.5;
draw_set_font(Courier8);
draw_set_halign(fa_left);
for (i=0; i<3; i+=1) {
if (pos=i) draw_sprite(sSavebox,1,x,y+1+(i*80));
else draw_sprite(sSavebox,0,x,y+1+(i*80));
draw_set_color(c_gray);
if (global.load_gold[i]=-777) draw_text(6,(i*80)+4,string_hash_to_newline("Slot "+string(i)+": No file data"));
else {
draw_set_color(c_white);
draw_text(6,(i*80)+4,string_hash_to_newline("Slot "+string(i)+": "+global.load_location[i]));
for (p=0; global.load_char[i,p]!=-1; p+=1) {
draw_sprite(sFacebox,0,i+7+(p*50),1+(i*80)+16);
if (global.load_vict[i]=0) draw_sprite(sFaces,global.load_face[i,p],i+7+(p*50),1+(i*80)+16);
else draw_sprite(sFaces0,global.load_face[i,p],i+7+(p*50),1+(i*80)+16);
draw_text(10+(p*50),64+(i*80),string_hash_to_newline("Level " + string(global.load_lvl[i,p])));
}
draw_sprite(sShekels,1,254,(i*80)+47);
draw_text(271,47+(i*80),string_hash_to_newline(sFormat(global.load_hours[i])+":"+sFormat(global.load_minutes[i])+":"+sFormat(global.load_seconds[i])));
draw_sprite(sShekels,0,254,(i*80)+62);
draw_text(271,47+15+(i*80),string_hash_to_newline(string(global.load_gold[i])));
}
}
