//port: v1.20-style in-place skip. The original restarted the room here and let
//oSideScroll's titleform=0 branch rebuild the title, but a room_restart in the
//modern runtime re-rolls the music (955ac55) -- so perform the same formation
//directly. The held skip key cannot also operate the menu: oTitle0 arms a key
//only after it is released on the visible menu.
if (dontkill=0) {
global.titleform=0;
if (!instance_exists(oTextFade)) instance_create(0,0,oTextFade);
oTextFade.visible=1;
oIntror6.image_alpha=1;
oIntror2.ll=999;
oIntror2.visible=1;
oIntror3.visible=1;
oTitle0.image_alpha=1;
oIntror4.image_alpha=1;
oIntror4a.image_alpha=1;
oSideScroll.image_alpha=1;
instance_destroy();
}
