global.descriptor="Gemstorm";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; doing=1; stage=0; exit; }
if (stage=0) {
if (fff=0) { sS(mBGem); fff=1; repeat (20) { fr=instance_create(target.x-60+random(120),50+random(150),oBDummy); fr.visible=1; fr.vspeed=4+random(3); fr.alarm[11]=70; fr.sprite_index=sBDuergar; fr.image_index=2; fr.image_speed=0; if (floor(random(2))=0) fr.depth=0; else fr.depth=-1500; } }
if (fff>65) { sS(mMutantballer1); sDamage(doing); doing=-1; ended=0; finish=1; }
}
if (fff!=0) fff+=1;

