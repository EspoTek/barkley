//Max HP, cure condition
sound_play(mFullheal);
for (q=0; global.party[q]!=-1; q+=1) {
global.char_chp[global.party[q]]=global.char_hp[global.party[q]];
global.char_czp[global.party[q]]=global.char_zp[global.party[q]];
global.char_res2[global.party[q]]="";
}