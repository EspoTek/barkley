//x,y,magic/health,object
var jj;
draw_sprite(sBMeter,2,argument0,argument1);
if (argument2='magic') {
jj=20-ceil((20/argument3._rbp)*max(0,argument3._bp));
jj=min(jj,20);
draw_sprite_part(sBMeter,1,jj+1,0,21-jj,9,argument0+1+jj,argument1);
} else {
jj=20-ceil((20/argument3._rvp)*max(0,argument3._vp));
jj=min(jj,20);
draw_sprite_part(sBMeter,0,jj+1,0,21-jj,9,argument0+1+jj,argument1);
}