instance_create(-10,-10,oIntro24c);
for (i=0; i<6; i+=1) {
rot[i]+=fff[i];
draw_sprite_ext(sprite_index,0,x,y-20,scl[i],scl[i],rot[i],col[i],alp[i]);
}

