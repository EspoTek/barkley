//Port fix: this block was at the top of Create. oSideScroll is the FIRST
//instance created in RomTitle, so every object it touches (oIntror2/3/4/4a/6,
//oTitle0) is created after it and did not exist yet. GM6 ignored writes to an
//instance-less object; GameMaker 2024 makes them fatal, so entering RomTitle
//with global.titleform=0 crashed -- which is what pressing a key to skip the
//opening splash does (oIntror0/oIntror1/oOntop all set titleform=0 then
//room_goto(RomTitle)) and what returning to the title from a game over or the
//quit menu does. Room Start runs once every instance exists. Same formation
//oIntror5's Keyboard_1 already performs in place for the in-room skip.
//It must sit ABOVE the sprite cleanup below, which exits early on re-entry.
if (global.titleform=0) {
instance_create(0,0,oTextFade);
oTextFade.visible=1;
oIntror6.image_alpha=1;
oIntror2.ll=999;
oIntror2.visible=1;
oIntror3.visible=1;
oTitle0.image_alpha=1;
oIntror4.image_alpha=1;
oIntror4a.image_alpha=1;
image_alpha=1;
with (oIntror5) instance_destroy();
}
//exit;
if (sprite_exists(qsprite0)=0) { exit; }
sprite_delete(qsprite0);
sprite_delete(qsprite1);
sprite_delete(qsprite2);
sound_delete(mTOGS);
sound_delete(mTOG);
sprite_delete(sIntror1);
sprite_delete(sIntror0);
