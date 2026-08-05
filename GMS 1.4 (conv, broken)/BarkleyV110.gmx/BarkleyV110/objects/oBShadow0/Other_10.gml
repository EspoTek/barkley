global.descriptor="Plague Needler";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; doing=0; stage=0; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=1; }
if (fff=5) { 
sS(mBNeedler); 
ggg=instance_create(x+20,y-30,oBNeedler); ggg.target=oBBarkley.id; ggg.master=id; ggg.sprite_index=sBShadow1; ggg.image_index=1; ggg.image_speed=0; ggg.daf=0;
ggg=instance_create(x+20,y-10,oBNeedler); ggg.target=oBHoopz.id; ggg.master=id; ggg.sprite_index=sBShadow1; ggg.image_index=1; ggg.image_speed=0; ggg.daf=0;
ggg=instance_create(x+20,y+10,oBNeedler); ggg.target=oBCyberdwarf.id; ggg.master=id; ggg.sprite_index=sBShadow1; ggg.image_index=1; ggg.image_speed=0; ggg.daf=0;
ggg=instance_create(x+20,y+30,oBNeedler); ggg.target=oBBalthios.id; ggg.master=id; ggg.sprite_index=sBShadow1; ggg.image_index=1; ggg.image_speed=0; ggg.daf=0;
} else if (fff>5 && instance_exists(oBNeedler)=0) { 
if (floor(random(2))=0) sBCondition("inflict","diabetes",oBBarkley); else sBCondition("inflict","glaucoma",oBBarkley);
if (floor(random(2))=0) sBCondition("inflict","diabetes",oBHoopz); else sBCondition("inflict","glaucoma",oBHoopz);
if (floor(random(2))=0) sBCondition("inflict","diabetes",oBCyberdwarf); else sBCondition("inflict","glaucoma",oBCyberdwarf);
if (floor(random(2))=0) sBCondition("inflict","diabetes",oBBalthios); else sBCondition("inflict","glaucoma",oBBalthios);
doing=-1; img=1; ended=0; finish=1;
}
}
if (fff!=0) fff+=1;


