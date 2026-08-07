//146-73
if (view_current=0) exit;
//Set box position
x=__view_get( e__VW.XView, 0 )+9+gxx;
y=__view_get( e__VW.YView, 0 )+169+gyy;
//draw action boxes
if (sact=1) { 
 wx=global.turn.x-58; wy=global.turn.y-5; ws=24;//i added -4 ws=24;
 draw_sprite_ext(sBIcon,5,wx+2,wy-ws+2,1,1,0,c_black,.25);
 draw_sprite_ext(sBIcon,6,wx-ws+2,wy+2,1,1,0,c_black,.25);
 draw_sprite_ext(sBIcon,7,wx+2,wy+2,1,1,0,c_black,.25);
 draw_sprite_ext(sBIcon,8,wx+ws+2,wy+2,1,1,0,c_black,.25);
 draw_sprite_ext(sBIcon,9,wx+2,wy+ws+2,1,1,0,c_black,.25);
 draw_sprite(sBIcon,0,wx,wy-ws);
 draw_sprite(sBIcon,1,wx-ws,wy);
 draw_sprite(sBIcon,2,wx,wy);
 draw_sprite(sBIcon,3,wx+ws,wy);
 draw_sprite(sBIcon,4,wx,wy+ws);
 if (asel=0) draw_sprite(sBIcon,5,wx,wy-ws);
 if (asel=1) draw_sprite(sBIcon,6,wx-ws,wy);
 if (asel=2) draw_sprite(sBIcon,7,wx,wy);
 if (asel=3) draw_sprite(sBIcon,8,wx+ws,wy);
 if (asel=4) draw_sprite(sBIcon,9,wx,wy+ws);
}

draw_sprite_ext(sBStats,0,x+2,y+2,1,1,0,c_black,.25);
draw_sprite(sBStats,0,x,y); //9,169

if (dname=1) { //235,8 - 13 y space
 sIntTarget(0,1);
 for (i=0; i<4; i+=1) {
  if (target[i]="") { 
   break; 
  } else {
   if (global.turn=targetid[i]) draw_sprite(sBHilight,0,x+233,y+6+(i*13));
   if (hilight=targetid[i]) draw_sprite_ext(sBHilight2,0,x+233,y+6+(i*13),1,1,0,c_red,0.5);
   sDrawBox(x+235,y+7+(i*13),"magic",targetid[i]);
   sDrawBox(x+260,y+7+(i*13),"health",targetid[i]);
   draw_sprite(sBFace,targetid[i].facet,x+286,y+7+(i*13));
  }
 }
}

if (dene=1) { 
 draw_set_color(c_white); //90, 196
 sIntTarget(1);
 for (i=0; i<8; i+=1) {
  if (target[i]="") { 
   break; 
  } else {
   if (global.turn=targetid[i]) draw_sprite(sBHilight,1,x+6+((i mod 2)*108),y+6+((i div 2)*13));
   if (hilight=targetid[i]) draw_sprite_ext(sBHilight2,1,x+6+((i mod 2)*108),y+6+((i div 2)*13),1,1,0,c_red,0.5);
   sDrawBox(x+88+((i mod 2)*108),y+7+((i div 2)*13),"health",targetid[i]);
   draw_text(x+7+((i mod 2)*108),y+5+((i div 2)*13),string_hash_to_newline(target[i]));
  }
 }
}

if (ddesc=1) {
 draw_sprite(sBattleArrow1,1,x-2,y+25);
 draw_sprite(sBattleArrow1,0,x+218,y+25);
 draw_set_color(c_white);
 if (global.turn.object_index=oBCyberdwarf && inf>0 && inf<4) draw_sprite(sBCyber0,inf-1,x+1,y+1);
 else draw_text_ext(x+8,y+4,string_hash_to_newline(global.turn.info[inf]),-1,209);
}

if (ditem=1) { 
 ix=2; iy=6; draw_set_color(c_white);
 if (h+7<itemmax) draw_sprite(sBattleArrow,0,x+209,y+58);
 if (h!=0) draw_sprite(sBattleArrow,1,x+209,y-2);
 for (i=0; i<8; i+=1) {
  if (item[i+h]="") { 
   break; 
  } else { //1 - 160, 25 -41
   if (pos0=i) {
    draw_sprite(sBHilight,2,x+5+((i mod 2)*107),y+iy-1+((i div 2)*13));
    if (state!="target") {
    draw_sprite_ext(sBDesc,0,x+2,y+2-160,1,1,0,c_black,.25); draw_sprite(sBDesc,0,x,y-160);
    draw_text_ext(x+8-1,y+4-1-160,string_hash_to_newline(iteme[i+h]),-1,288);
    }
   }
   draw_sprite(sBX,0,x+87+7+((i mod 2)*107),y+6+iy+((i div 2)*13));
   draw_text(x+91+7+((i mod 2)*107),y+iy-1+((i div 2)*13),string_hash_to_newline(itemq[i+h]));
   draw_text(x+6+((i mod 2)*107),y+iy-1+((i div 2)*13),string_hash_to_newline(item[i+h]));
  }
 }
}

if (dskill=1) { //need skill instead of item references
 ix=2; iy=6; draw_set_color(c_white);
 if (h+7<global.turn.skillmax) draw_sprite(sBattleArrow,0,x+209,y+58); //4
 if (h!=0) draw_sprite(sBattleArrow,1,x+209,y-2);
 for (i=0; i<8; i+=1) {
  if (global.turn.skill[i+h]="") { 
   break; 
  } else { //1 - 160, 25 -41
   if (pos0=i) {
    draw_sprite(sBHilight,2,x+5+((i mod 2)*107),y+iy-1+((i div 2)*13));
    draw_sprite_ext(sBDesc,0,x+2,y+2-160,1,1,0,c_black,.25); draw_sprite(sBDesc,0,x,y-160);
    draw_text_ext(x+8-1,y+4-1-160,string_hash_to_newline(global.turn.skilld[i+h]),-1,288);
   } //80,120,220
   draw_sprite(sBattleBox,0,x+6+((i mod 2)*107),y+iy+((i div 2)*13));
   draw_set_color(make_color_rgb(80,120,220));
   draw_text(x+8+((i mod 2)*107),y+iy-1+((i div 2)*13),string_hash_to_newline(global.turn.skillp[i+h]));
   draw_set_color(c_white);
   draw_text(x+23+((i mod 2)*107),y+iy-1+((i div 2)*13),string_hash_to_newline(global.turn.skill[i+h]));
  }
 }
}

if (global.descriptor!="") {
 draw_set_color(c_black);
 draw_text(x+5,y-10,string_hash_to_newline(global.descriptor));
 draw_text(x+3,y-10,string_hash_to_newline(global.descriptor));
 draw_text(x+4,y-11,string_hash_to_newline(global.descriptor));
 draw_text(x+4,y-9,string_hash_to_newline(global.descriptor));
 draw_set_color(c_white);
 draw_text(x+4,y-10,string_hash_to_newline(global.descriptor));
}
if (global.movetor!="") {
 draw_set_color(c_black);
 draw_text(x+231,y-10,string_hash_to_newline(global.movetor));
 draw_text(x+233,y-10,string_hash_to_newline(global.movetor));
 draw_text(x+232,y-11,string_hash_to_newline(global.movetor));
 draw_text(x+232,y-9,string_hash_to_newline(global.movetor));
 draw_set_color(c_white);
 draw_text(x+232,y-10,string_hash_to_newline(global.movetor));
}
