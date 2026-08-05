sEnemyAI();
//Run from battle
if (rover>0) {
global.b_obj=right;
if (rover=2) global.descriptor="You successfully ran from battle.";
rover+=1;
if (rover=3) { sA("stopall"); sS(mMutantballer2); }
if (rover=60) { fade=0; revfade=0.01; }
if (rover>120) { sBattleExport(); global.batresult="run"; room_goto(global.b_room); }
}

//Win battle
if (over>0) {
oBattler.won=1;
if (over=2) { plr=-1; global.b_obj=right; }
if (over=3) { over=61; sA("stopall"); sA("loop",mVictory); }
if (over=61) global.descriptor="Gained " + string(global.b_exp) + " exp";
if (over=121) global.descriptor="Found " + string(global.b_gold) + " neo-shekels";
over+=1;
if (over>179) { if (plr!=-1) { tttmp=instance_create(plr.fx-20+random(40),plr.fy,oSparkles); tttmp.target=plr; } }
if (over=180) { 
sBattleExport(); 
//Give rewards, add items later. Maybe have dialog after battle?
global.b_split=0;
with (oBattler) global.b_split+=!enemy;
for (i=0; global.party[i]!=-1; i+=1) global.char_xp[global.party[i]]+=floor(global.b_exp/global.b_split);
global.gold+=global.b_gold;
}
if (over=181) { 
dl=sBattlePreLevel();
if (dl=1) {
global.descriptor=msg0;
} else over=180+90; 
}
if (over=181+45) { if (msg1="") over=180+90; else global.descriptor=msg1; }
if (over=180+90) { 
if (dl=0) { fade=0; revfade=0.01; }
else over=180;
}
if (over>260+45) event_user(1);
}

//Lose battle
if (gover>0) {
global.b_obj=right;
if (gover=2) global.descriptor="You have been slain.";
gover+=1;
if (gover=3) { sA("stopall"); }
if (gover=60) { fade=0; revfade=0.01; }
if (gover>150) {
global.dieroom=9999;
global.diemessage="You have been slain in battle. The post cyberpocalypse rages on.";
room_goto(RomGameover);
}
}

//Start battle Transitions
if (trn!=-1) {
if (trn=1) {
if (ig>0) { vw+=6.4; vh+=4.8; aw-=3.2; ah-=2.4; }
ig-=1; 
} else if (trn=4) { //noticde 4
if (ig>0) { vw-=6.4; vh-=4.8; aw+=3.2; ah+=2.4; }
ig-=1; 
} else if (trn=3) {
slav.x+=5;
if (slav.x-320>=5) { slav.x=320; trn=-1; }
} else if (trn=2) {
slav.x-=5;
if (slav.x-320<=5) { slav.x=320; trn=-1; }
}
}

//View
sViewFollow(slav);
__view_set( e__VW.WView, 0, vw );
__view_set( e__VW.HView, 0, vh );
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (aw) );
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (ah+50) );
__view_set( e__VW.XView, 1, __view_get( e__VW.XView, 0 ) );
__view_set( e__VW.YView, 1, __view_get( e__VW.YView, 0 ) );
