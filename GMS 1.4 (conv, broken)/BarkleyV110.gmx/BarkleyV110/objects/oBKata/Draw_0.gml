if (view_current!=0) exit;
if (stage>=1) { 
if (a0=1 && c0=0) { l0-=1; if (l0<0 && stage=1) { oBBalthios.optout=1; exit; } }
if (a0!=1 && c0=0) { draw_sprite_ext(sprite_index,0,x,y,i0,i0,0,c_white,a0); i0=max(1,i0-.3); a0=min(1,a0+.1); }
else draw_sprite_ext(sprite_index,0,x,y,i0,i0,0,c_red,a0);
}
if (stage>=2) { 
if (a1=1 && c1=0) { l1-=1; if (l1<0 && stage=2) { oBBalthios.optout=1; exit; } }
if (a1!=1 && c1=0) { draw_sprite_ext(sprite_index,1,x,y,i1,i1,0,c_white,a1); i1=max(1,i1-.3); a1=min(1,a1+.1); }
else draw_sprite_ext(sprite_index,1,x,y,i1,i1,0,c_red,a1);
}
if (stage>=3) { 
if (a2=1 && c2=0) { l2-=1; if (l2<0 && stage=3) { oBBalthios.optout=1; exit; } }
if (a2!=1 && c2=0) { draw_sprite_ext(sprite_index,2,x,y,i2,i2,0,c_white,a2); i2=max(1,i2-.3); a2=min(1,a2+.1); }
else draw_sprite_ext(sprite_index,2,x,y,i2,i2,0,c_red,a2);
}
