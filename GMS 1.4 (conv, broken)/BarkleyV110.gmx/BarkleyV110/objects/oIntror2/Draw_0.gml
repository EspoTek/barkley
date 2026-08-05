if (ll>=ww) { draw_sprite(ss,0,x,y); exit; }
draw_sprite_part_ext(ss,0,0,0,ll,hh,x,y,1,1,c_white,1);
for (i=0; i+ll<ll+20; i+=1) {
if (i+ll>ww) { ll+=2; exit; }
draw_sprite_part_ext(ss,0,ll+i,0,1,hh,x+ll+i,y,1,1,c_white,abs(1-(i/20)));
}
ll+=2;
