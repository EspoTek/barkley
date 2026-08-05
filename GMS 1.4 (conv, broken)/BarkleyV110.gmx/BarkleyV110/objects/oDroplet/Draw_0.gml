if (y<ystart+32) {
y+=4*global.rd;
draw_sprite_ext(sDroplet,img,x,y,1,1,0,c_white,0.5);
} else {
image_speed=0.4*global.rd;
draw_sprite_ext(sDroplet,min(image_index,5),x,y,1,1,0,c_white,0.5);
}

