//Applies battle item effect `comm` (id set in sBItemSub) to `player`.
//Reads the calling instance's comm/player/value/effect vars — replaces the
//original execute_string(global.temp8) code strings one-for-one.
switch (comm) {
case 0: break;
case 1: sBCondition('revive',0,player); break;
case 2: sBCondition('cure','ailments',player); break;
case 3: sBCondition('cure','all',player); break;
case 4: sBCondition('cure',effect,player); break;
//flat
case 5: sBCondition("vp",value,player); break;
case 6: sBCondition("bp",value,player); break;
case 7: global.char_cattack[player]+=value; break;
case 8: global.char_cdefense[player]+=value; break;
case 9: global.char_cfootwork[player]+=value; break;
case 10: global.char_czauberacity[player]+=value; break;
//percent
case 11: sBCondition("vp",floor((player._rvp/100)*value),player); break;
case 12: sBCondition("bp",floor((player._rbp/100)*value),player); break;
case 13: global.char_cattack[player]+=(global.char_attack[player]/100)*value; break;
case 14: global.char_cdefense[player]+=(global.char_defense[player]/100)*value; break;
case 15: global.char_cfootwork[player]+=(global.char_footwork[player]/100)*value; break;
case 16: global.char_czauberacity[player]+=(global.char_zauberacity[player]/100)*value; break;
}
