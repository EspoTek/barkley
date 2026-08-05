if (sight=1) {
if (focus=1) draw_set_color(c_blue);
else if (alert=0) draw_set_color(c_green);
else draw_set_color(c_red);
xx[0]=x;
yy[0]=y;
xx[1]=x+lengthdir_x(yspr,direction-(dspr/2));
yy[1]=y+lengthdir_y(yspr,direction-(dspr/2));
xx[2]=x+lengthdir_x(yspr,direction+(dspr/2));
yy[2]=y+lengthdir_y(yspr,direction+(dspr/2));
draw_line(xx[0],yy[0],xx[1],yy[1]);
draw_line(xx[1],yy[1],xx[2],yy[2]);
draw_line(xx[0],yy[0],xx[2],yy[2]);
}

