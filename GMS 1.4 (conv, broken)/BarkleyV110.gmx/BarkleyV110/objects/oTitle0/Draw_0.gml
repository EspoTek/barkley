image_speed=global.rd/2;
x=160;
draw_sprite_ext(sTitle0,0,115,135,1,1,0,c_white,image_alpha);
draw_sprite_ext(sDialogBlip,image_index,115+5,135+(pos*13)+5,1,1,0,c_white,image_alpha);
draw_set_alpha(image_alpha);
draw_set_font(Courier8);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(290,210,string_hash_to_newline("V 1.09#bleep edition")); //228
draw_set_alpha(1);
if (keyboard_string="hiratio") {
draw_set_halign(fa_left);
draw_set_color(c_black);
draw_rectangle(0,0,321,241,0);
draw_set_color(c_white);
draw_text_ext(10,10,string_hash_to_newline("The original >TOG KREW<#Game programmed by GZ (Jesse Ceranowicz)#Game masterminded by Chef Boyardee (Eric Shumaker)#Game escalated by bort (???)#Media guru Drule (Daniel Norstrom)##hiratio gives his regards... from the grave.##www.talesofgames.com#www.gzstorm.com#www.drule.net"),-1,300);
}
