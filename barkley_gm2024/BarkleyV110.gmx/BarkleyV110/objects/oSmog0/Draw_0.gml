ff=40;
xx=__view_get( e__VW.XView, 0 );
yy=__view_get( e__VW.YView, 0 );
x+=ox-xx;
y+=oy-yy;
speed=((1+random(1)/2)*global.rd)/2;
if (kkk=0) image_angle+=random(global.rd);
else image_angle-=random(global.rd);
draw_sprite_ext(sprite_index,spt,floor(xx+x),floor(yy+y),1,1,image_angle,c_white,0.05+(random(1)/10));
if (x>320+ff) { x=-ff; kkk=floor(random(2));spt=floor(random(5));direction=random(360); }
if (x<-ff) { x=320+ff; kkk=floor(random(2));spt=floor(random(5));direction=random(360); }
if (y<-ff) { y=240+ff; kkk=floor(random(2));spt=floor(random(5));direction=random(360); }
if (y>240+ff) { y=-ff; kkk=floor(random(2));spt=floor(random(5));direction=random(360); }
