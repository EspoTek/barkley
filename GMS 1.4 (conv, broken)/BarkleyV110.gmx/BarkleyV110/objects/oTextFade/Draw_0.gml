lll+=global.rd;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if (fade=1) fff=min(1,fff+(0.05*global.rd));
else {
fff=max(0,fff-(0.05*global.rd));
if (fff=0) fade=1;
}
draw_set_alpha(fff);
draw_set_font(Arial12);
draw_set_color(c_white);
h=cou-abs(1-fade);
if (h=-1) h=3;
draw_text_ext(160,220,string_hash_to_newline(quote[h]),-1,230);
draw_set_alpha(1);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
if (lll>string_length(quote[cou])*2.5) event_user(0)
