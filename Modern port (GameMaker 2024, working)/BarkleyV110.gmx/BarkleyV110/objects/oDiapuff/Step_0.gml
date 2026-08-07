image_alpha-=global.rd/60;
y+=global.rd;
x+=-1+random(2);
//
jig=point_distance(x,y,oBarkley.x+8,oBarkley.y+22);
if (jig<32) {
global.contam+=abs(jig-32)/16;
}
if (image_alpha<0) instance_destroy();
