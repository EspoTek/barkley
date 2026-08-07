var ax,ay
if (argument0=0) { ax=x; ay=y; }
else { ax=argument0.x; ay=argument0.y; }
view_xview[0]=(ax+12)-global.we0;
view_yview[0]=(ay+16)-global.he0;
view_xview[0]=(view_xview[0]-(global.shake/2))+random(global.shake);
view_yview[0]=(view_yview[0]-(global.shake/2))+random(global.shake);
if (view_xview[0]<0) view_xview[0]=0;
if (view_xview[0]+global.wid>room_width) view_xview[0]=room_width-global.wid;
if (view_yview[0]<0) view_yview[0]=0;
if (view_yview[0]+global.hei>room_height) view_yview[0]=room_height-global.hei;