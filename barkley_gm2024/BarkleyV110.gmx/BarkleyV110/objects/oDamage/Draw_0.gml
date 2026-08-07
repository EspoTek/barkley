if (view_current!=0) exit;
draw_set_halign(fa_center);
cou+=1;
y-=1*2;
if (cou>15) image_alpha-=0.03*2;
cou+=1;
//y-=1*2;
//if (cou>15) image_alpha-=0.03*2; //doubled
if (image_alpha<0) instance_destroy();
draw_set_alpha(image_alpha);
draw_set_color(c_black);
if (is_real(dmg)) dng=abs(dmg);
else dng=dmg;
draw_text_ext(x-1,y,string_hash_to_newline(dng),-1,122);
draw_text_ext(x+1,y,string_hash_to_newline(dng),-1,122);
draw_text_ext(x,y-1,string_hash_to_newline(dng),-1,122);
draw_text_ext(x,y+1,string_hash_to_newline(dng),-1,122);
if (is_real(dmg)) {
if (dmg>=0) draw_set_color(c_red);
else draw_set_color(c_lime);
} else {
if (dmg="MISS" || dmg="No Effect") draw_set_color(c_ltgray);
else if (string_count("ured",dmg)>0) draw_set_color(c_aqua);
else draw_set_color(c_fuchsia);
}
if (col!=-1) draw_set_color(col);
draw_text_ext(x,y,string_hash_to_newline(dng),-1,122);
draw_set_color(c_black);
draw_set_alpha(1);
draw_set_halign(fa_left);
