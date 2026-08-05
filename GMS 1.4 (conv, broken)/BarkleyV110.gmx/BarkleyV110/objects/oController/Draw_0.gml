if (room=RomInter) exit;
vxv=__view_get( e__VW.XView, 0 )+gxx;
vyv=__view_get( e__VW.YView, 0 )+gyy;
//Sprint
global.sprinter=max(global.sprinter,0);
global.sprinter=min(global.sprinter,100);
if (global.cinema=0 && global.freeze=0 && instance_exists(oDialog)=0) { //global.sprinter!=100 && 
if (global.sprinter=100) x_d=0;
x_k=abs(70-(floor(70/100*global.sprinter))); //115, 22
if (x_v>x_d) x_v-=0.1*global.rd;
else if (x_v<x_d) x_v+=0.1*global.rd;
x_v=max(0,x_v); x_v=min(1,x_v);
x_k=floor(x_k);
draw_sprite_part_ext(sSprintIcon,0,0,0,115-3-x_k,22,vxv+10,vyv+215,1,1,c_white,x_v); //102
draw_sprite_part_ext(sSprintIcon,1,(115-3)-x_k,0,3+x_k,22,vxv+10+115-(3+x_k),vyv+215,1,1,c_white,x_v);
}
//Room name
if (sco>0) fal=min(1,fal+(global.rd/10));
else fal=max(0,fal-(global.rd/10));
sco=max(0,sco-global.rd);
if (fal!=0) {
draw_set_alpha(fal);
sFont(Arial14,c_black,fa_center);
draw_text(vxv+161,vyv+10,string_hash_to_newline(name));
draw_text(vxv+159,vyv+10,string_hash_to_newline(name));
draw_text(vxv+160,vyv+9,string_hash_to_newline(name));
draw_text(vxv+160,vyv+11,string_hash_to_newline(name));
sFont(Arial14,c_white,fa_center);
draw_text(vxv+160,vyv+10,string_hash_to_newline(name));
}
draw_set_alpha(1);
sFont(Courier8,c_white,fa_left);
if (global.skip=0.5) {
draw_text(vxv+3,vyv+1,string_hash_to_newline("Press start again to skip this cinema."));
cou+=global.rd;
if (cou>30) { cou=0; global.skip=0; }
}

//Diabetes walk
if (dia>19) {
dia=0;
for (q=0; global.party[q]!=-1; q+=1) {
ef=global.party[q];
if (string_count("diabetes",string_lower(global.char_res2[ef]))>0) {
global.char_chp[ef]=max(1,global.char_chp[ef]-1);
dia+=1;
}
}
if (dia!=0) {
draw_set_color(c_fuchsia); draw_set_alpha(0.3);
draw_rectangle(vxv,vyv,vxv+320,vyv+240,0);
draw_set_alpha(1);
}
dia=0;
}

//brightness
if (global.sat[2]!=2) {
if (global.sat[2]=0) vr=2; if (global.sat[2]=1) vr=1;
if (global.sat[2]=3) vr=1; if (global.sat[2]=4) vr=2;
if (global.sat[2]>2) draw_set_blend_mode(bm_add);
else draw_set_blend_mode(bm_subtract);
draw_set_color(make_color_rgb(vr*16,vr*16,vr*16));
draw_rectangle(vxv,vyv,vxv+320,vyv+240,0);
draw_set_blend_mode(bm_normal);
}
