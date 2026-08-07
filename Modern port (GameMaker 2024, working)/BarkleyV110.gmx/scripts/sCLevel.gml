//Competitive level (to barkley). Supply id of player
global.char_xp[argument0]=global.char_xp[0];
while (true) {
 if (global.char_res1[0]>global.char_res1[argument0]) {
  global.char_res1[argument0]+=1;
  skall=sBattleLevel(argument0,global.char_res1[argument0]); 
  if (skall!="") sBattleSkill(argument0,skall);
 } else break;
}