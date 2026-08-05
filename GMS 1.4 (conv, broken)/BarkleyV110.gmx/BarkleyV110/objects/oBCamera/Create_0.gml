sViewInit();
//Rest
enemy=0; finish=0.5; global.turn=id; //stall ai
alarm[0]=60; //turns
fade=1; //initial fade
revfade=0;
vw=320; //zoom widht
vh=240;
aw=0; //attrition width
ah=0;
firststrike=global.batset; //1 is ally, -1 is enemy strike
over=0; //you win
gover=0; //enemy win
rover=0; //run away
slav=instance_create(320,192,oBPanner);
slov=instance_create(320,192,oBDummy); //camera middle
global.b_cmiddle=slov;
middle=instance_create(320,240,oBDummy);
right=instance_create(320+120,240,oBDummy);
left=instance_create(320-120,240,oBDummy);
global.b_left=left;
global.b_middle=middle;
trn=floor(random(4)); //was 5
if (trn=0) {
//plain
} else if (trn=1) { //zoom out
ig=45;
repeat (45) { vw-=6.4; vh-=4.8; aw+=3.2; ah+=2.4; }
} else if (trn=4) { //zoom in
ig=45;
repeat (45) { vw+=6.4; vh+=4.8; aw-=3.2; ah-=2.4; }
} else if (trn=3) { //left
slav.x=160;
} else if (trn=2) { //right
slav.x=room_width-160;
}
sViewFollow(global.b_middle);
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (50) );
event_user(0); //load batle chars
sViewFollow(slav);
__view_set( e__VW.WView, 0, vw );
__view_set( e__VW.HView, 0, vh );
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (aw) );
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (ah+50) );
__view_set( e__VW.XView, 1, __view_get( e__VW.XView, 0 ) );
__view_set( e__VW.YView, 1, __view_get( e__VW.YView, 0 ) );
//
if (firststrike=0) global.descriptor="It's time to slam jam!";
else if (firststrike=1) global.descriptor="You surprised the enemy!";
else global.descriptor="You are being pre-emptively attacked!";
global.batset=0; //reset it
oBattleMenu.alarm[0]=60;
global.b_cover=0;
global.b_scover=0; //skip cover for diabetets and such
global.b_evade=0;
global.b_victory=0;
//Create background image
backdrop=instance_create(0,20.5,oBDummy);
backdrop.depth=5;
backdrop.visible=1;
backdrop.sprite_index=sBBattle;
backdrop.image_speed=0;
backdrop.image_index=global.b_back;
if (global.b_music!=-1) sA("loop",global.b_music);
