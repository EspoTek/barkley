//safe check
if (variable_local_exists("indialog")=0) {
if (global.devplay=1) {
show_message("happen");
//show_message('on '+object_get_name(object_index));
//event_perform(ev_create,0);
//show_message('gz '+desc);
}
room_restart(); //this works
}
///rest
if (indialog=1) exit;
if (domove!=-1) {
direction=90-(t*90);
zx=x+lengthdir_x(1,direction);
zy=y+lengthdir_y(1,direction);
if (t=0) move="up";
if (t=1) move="right";
if (t=2) move="down";
if (t=3) move="left";
if (place_free(zx,zy)=0) { move=""; domove=-1; }
//else { walk=1; move_contact_solid(direction,spd*global.rd); }
if (point_distance(ox,oy,x,y)>=16) { move=""; domove=-1; }
} else if (movement!=0) {
walk=0;
cog+=global.rd/3;
if (random(cog)>movement) {
cog=0;
ox=x;
oy=y;
domove=floor(random(4));
t=domove;
}
}
