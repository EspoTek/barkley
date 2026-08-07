//Transfer enemies, arg0 is batface to delete who if 0 planned encounter
for (k=0; ene[k]!=""; k+=1) {
global.bene[k]=ene[k];
global.bene[k+1]="";
}
global.roz=room;
global.b_room=room;
global.batface=argument0;
sS(mBattleSound);
rt_trans(RomInter);