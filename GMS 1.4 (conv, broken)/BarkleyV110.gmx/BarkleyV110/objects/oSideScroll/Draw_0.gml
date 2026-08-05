exit;
for (i=0; i<img; i+=1) {
ii=i+1;
if (i>=6) ii+=1;
draw_sprite_ext(sprite_index,ii,0,y+(i*spl),1,1,0,c_white,image_alpha);
}
for (i=0; i<img; i+=1) {
ii=i+1;
if (i>=6) ii+=1;
draw_sprite_ext(sprite_index,ii,0,y-(spl*img)+(i*spl),1,1,0,c_white,image_alpha);
}
for (i=0; i<img; i+=1) {
ii=i+1;
if (i>=6) ii+=1;
draw_sprite_ext(sprite_index,ii,320-47,yy+(i*spl),1,1,0,c_white,image_alpha);
}
for (i=0; i<img; i+=1) {
ii=i+1;
if (i>=6) ii+=1;
draw_sprite_ext(sprite_index,ii,320-47,yy+(spl*img)+(i*spl),1,1,0,c_white,image_alpha);
}
y+=1*global.rd;
yy-=1*global.rd;
