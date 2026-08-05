cou+=global.rd;
if (cou>10) {
cou=0;
if (floor(random(2))=0) {
x0=random(40);
y0=random(140);
} else {
x1=random(40);
y1=random(140);
}
}
if (jack>0) {
jack-=global.rd/50;
global.fogtimes=jack;
if (jack<0) { instance_destroy(); exit; }
}
draw_sprite_ext(sProtoFog,0,__view_get( e__VW.XView, 0 )+x0,__view_get( e__VW.YView, 0 )+y0,1,1,direction,c_white,(0.1+random(0.1))*global.fogtimes);
draw_sprite_ext(sProtoFog,0,__view_get( e__VW.XView, 0 )+x1,__view_get( e__VW.YView, 0 )+y1,1,1,direction,c_white,(0.1+random(0.1))*global.fogtimes);
