//clock
vou+=global.rd*2;
repeat (floor(vou)) {
if (jumping=1) {
jcou+=.4;
jump-=3-jcou;
if (jcou>=2 || jump<-10) { jcou=0; jumping=0; }//jumping=2; }
} else if (jumping=2) {
jcou+=.4;
jump+=jcou;
if (jump>0) { jcou=0; jump=0; jumping=0; }//jumping=0; }
}
}
vou-=floor(vou);
if (allwalk=0) walk=0;
if (move="up") { direction=90; walk=1; t=0; }
if (move="upright") { direction=45; walk=1; t=0; }
if (move="right") { direction=0; walk=1; t=1; }
if (move="downright") { direction=315; walk=1; t=1; }
if (move="down") { direction=270; walk=1; t=2; }
if (move="downleft") { direction=225; walk=1; t=2; }
if (move="left") { direction=180; walk=1; t=3; }
if (move="upleft") { direction=135; walk=1; t=3; }
if (walk=1) {
cou+=0.3*global.rd;
if (cou>4) cou-=4;
shw=floor(cou);
xx=x;
yy=y;
if (move!="") move_contact_solid(direction,spd*global.rd); //max added very late
if (xx=x && yy=y && move!="") { //right left shifter
for (o=1; o<14; o+=1) {
zx=x+lengthdir_x(o,direction-90);
zy=y+lengthdir_y(o,direction-90);
zx+=lengthdir_x(1,direction);
zy+=lengthdir_y(1,direction);
if (place_free(zx,zy)) {
move_contact_solid(direction-90,min(((o+1)*global.rd)/2,(spd*global.rd)/2));
break;
}
zx=x+lengthdir_x(o,direction+90);
zy=y+lengthdir_y(o,direction+90);
zx+=lengthdir_x(1,direction);
zy+=lengthdir_y(1,direction);
if (place_free(zx,zy)) {
move_contact_solid(direction+90,min(((o+1)*global.rd)/2,(spd*global.rd)/2));
break;
}
}
//if (place_free
}
//if (xx=x && yy=y) move_contact_solid(direction-90,(spd/2)*global.rd);
//if (xx=x && yy=y) move_contact_solid(direction+90,(spd/2)*global.rd);
} else {
cou=0; 
shw=1;
}
if (shw=3) shw=1;
ll=shw*24;
tt=t*32;
if (dap=0) {
if (ambattler=0) depth=-(y+32);
else depth=-(y+6);
}
