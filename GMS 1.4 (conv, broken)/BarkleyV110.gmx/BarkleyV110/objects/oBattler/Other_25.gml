//Do this event after draw
if (global.b_victory=0) {
if (oBattleMenu.state!="wait" && oBattleMenu.state!="postshow" && oBattleMenu.state!="postattack") {
nx=fx;
ny=fy+5;
if (_xpower!=0) {
draw_sprite(sBI,0,nx-13,ny)
if (_xpower>0) { draw_sprite(sBI,4,nx-13,ny-7); }
if (_xpower<0) { draw_sprite(sBI,5,nx-13,ny+7); }
}
if (_xguard!=0) {
draw_sprite(sBI,1,nx-6,ny)
if (_xguard>0) { draw_sprite(sBI,4,nx-6,ny-7); }
if (_xguard<0) { draw_sprite(sBI,5,nx-6,ny+7); }
}
if (_xspeed!=0) {
draw_sprite(sBI,2,nx+1,ny)
if (_xspeed>0) { draw_sprite(sBI,4,nx+1,ny-7); }
if (_xspeed<0) { draw_sprite(sBI,5,nx+1,ny+7); }
}
if (_xbrain!=0) {
draw_sprite(sBI,3,nx+8,ny)
if (_xbrain>0) { draw_sprite(sBI,4,nx+8,ny-7); }
if (_xbrain<0) { draw_sprite(sBI,5,nx+8,ny+7); }
}
}
}

if (hilight=1) {
//arrow draw was here
draw_set_blend_mode(bm_add);
if (der=0) fgf+=0.1;
else fgf-=0.1;
if (fgf>1) der=!der;
if (fgf<0) der=!der;
draw_sprite_ext(sprite_index,img,x,y,image_xscale,image_yscale,0,col,fgf);
draw_set_blend_mode(bm_normal);
}
x-=sx; y-=sy; x-=px; y-=py; //Shake and parkinsons
if (c_handicapable=1) draw_sprite(sHandicapped,0,x,y);
if (c_glaucoma=1) {
gou-=1;
if (gou<0) {
gou=3+floor(random(2));
faz=instance_create(x-15+random(30),y-15+random(30),oGlaucoma);
faz.depth=depth-1;
}
}
