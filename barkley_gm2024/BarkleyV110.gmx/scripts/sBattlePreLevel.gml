var i,g,h,lel;
//Level mechanism goes here - RPG is 200 per level basically
//Level 1 is 200
//Level 2 is 400
//Level 3 is 600
lel=0;
for (i=0; global.party[i]!=-1; i+=1) {

if (global.b_party[i]._vp>0) {

h=0;
for (g=1; g<=global.char_res1[global.party[i]]; g+=1) { h+=200*g; }
if (global.char_xp[global.party[i]]>=h) {
lel=1;
global.char_res1[global.party[i]]+=1;
skall=sBattleLevel(global.party[i],global.char_res1[global.party[i]]);
if (skall!="") sBattleSkill(global.party[i],skall);
msg0=global.char_name[global.party[i]] + " aspired to level " + string(global.char_res1[global.party[i]]);
if (skall!="") msg1=global.char_name[global.party[i]] + " learned " + skall;
else msg1="";
plr=global.b_pid[i];
break;
}

}

}
return(lel);