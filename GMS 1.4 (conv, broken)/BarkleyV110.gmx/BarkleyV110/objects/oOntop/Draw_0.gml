if (alp>dalp) alp-=amt;
else if (alp<dalp) alp+=amt;
if (abs(alp-dalp)<amt) alp=dalp;
draw_set_color(c_black);
draw_set_alpha(alp);
draw_rectangle(0,0,321,241,0);
draw_set_alpha(1);
