if (view_current=0) {
act+=grv;
height+=act;
y+=act;
if (height>0) {
act=-(abs(act)/1.5);
y-=height;
height=0;
}
//draw_sprite(sBBall1,sha,x,y+(abs(height)));
draw_sprite_ext(sprite_index,image_index,x,y,1,1,random(360),c_white,1);
if (image_index=7) {
draw_set_blend_mode(bm_add);draw_sprite(sBBallGlow,0,x,y);draw_set_blend_mode(bm_normal);
}
}
