if (view_current!=1) exit;
if (dalp>alp) alp+=dspd;
if (dalp<alp) alp-=dspd;
if (abs(dalp-alp)<=dspd) alp=dalp;
draw_set_alpha(alp);
draw_set_color(col);
draw_rectangle(0,0,640,370,0);
draw_set_alpha(1);
