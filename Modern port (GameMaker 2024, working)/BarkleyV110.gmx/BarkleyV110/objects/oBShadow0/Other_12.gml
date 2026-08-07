global.descriptor="Moon Regeneration";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; stage=0; doing=2; exit; }
if (stage=0) {
if (fff=0) { sS(mBMoon); fff=1; img=5; sT(c_black,0.5,0.5/30); ui=instance_create(x+100,y-40,oBDummy); ui.visible=1; ui.image_alpha=0; ui.sprite_index=sBShadow1; ui.image_index=0; ui.image_speed=0; }
if (fff>0 && fff<30) ui.image_alpha+=.5/15;
if (fff>35 && fff<65) with (ui) move_towards_point(oBShadow0.x,oBShadow0.y,3.5);
if (fff=65) { sS(mItemUse); sBCondition("cure","all",id); sBCondition("vp",floor(_rvp/5),id); sT(c_black,0,0.5/15); with (ui) instance_destroy(); }
if (fff>86) { doing=-1; img=1; ended=0; finish=1; }
}
if (fff!=0) fff+=1;

