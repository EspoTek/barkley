if (position_meeting(mouse_x,mouse_y,id)) {

if (sKey(vk_up,1)) lvl+=1;
if (sKey(vk_down,1)) lvl-=1;
if (sKey(vk_right,1) || sKey(vk_left,1)) lvl=real("20");
if (mouse_check_button(mb_left)) {
mouse_clear(mb_left);
state+=1;
if (bn[state]=-999) state=0;
with (slav) instance_destroy();
slav=instance_create(x+8,y+4,bn[state]);
}
if (mouse_check_button(mb_right)) {
mouse_clear(mb_right);
state=0;
lvl=0;
if (bn[state]=-999) state=0;
with (slav) instance_destroy();
slav=instance_create(x+8,y+4,bn[state]);
}

}
