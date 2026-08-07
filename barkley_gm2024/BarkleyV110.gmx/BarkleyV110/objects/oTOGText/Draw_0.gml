pro=min(11,pro+1);
if (pro>10) draw_sprite(sprite_index,0,x,y);
else {
for (i=0; i<5; i+=1) {
draw_sprite_ext(sprite_index,0,x-10+random(20),y,1,1,0,c_white,i/13);
}
}
