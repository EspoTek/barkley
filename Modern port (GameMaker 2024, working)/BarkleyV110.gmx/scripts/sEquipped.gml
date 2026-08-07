//Recalculates all party member HP and everythng for equip
var i,q,l;
for (i=0; global.party[i]!=-1; i+=1) {
q=global.party[i];
global.char_rhp[q]=global.char_hp[q];
global.char_rzp[q]=global.char_zp[q];
global.char_rattack[q]=global.char_attack[q];
global.char_rdefense[q]=global.char_defense[q];
global.char_rfootwork[q]=global.char_footwork[q];
global.char_rzauberacity[q]=global.char_zauberacity[q];
zaz[0]=global.char_eweapon[q];
zaz[1]=global.char_earmour[q];
zaz[2]=global.char_eaccess[q];
for (l=0; l<3; l+=1) {
refItem(zaz[l]);
global.char_rhp[q]+=global.tVp;
global.char_rzp[q]+=global.tZp;
global.char_rattack[q]+=global.tAir;
global.char_rdefense[q]+=global.tGuard;
global.char_rfootwork[q]+=global.tFoot;
global.char_rzauberacity[q]+=global.tZaubacity;
}
//
global.char_chp[q]=min(global.char_chp[q],global.char_rhp[q]);
global.char_czp[q]=min(global.char_czp[q],global.char_rzp[q]);
}