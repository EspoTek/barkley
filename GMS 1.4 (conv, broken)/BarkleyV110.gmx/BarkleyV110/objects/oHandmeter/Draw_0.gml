x=__view_get( e__VW.XView, 0 );
y=__view_get( e__VW.YView, 0 )-10;
dx=min(dx+2,(global.duergar*12));
gx=min(gx+2,(global.genie*12));
//draw_sprite(sHandmeter,0,x+10,y+20);
draw_sprite(sHands,0,x-30+20+dx,y+25+sd);
draw_sprite(sHands,1,x-86+300-gx,y+25+sd);
if (shake=1) {
dc+=1;
if (dc>59) instance_destroy();
if (sc=0) {
sd+=1;
if (sd>2) sc=1;
} else {
sd-=1;
if (sd<-2) sc=0;
}
}

