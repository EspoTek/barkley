//for (t=0; t<100; t+=1) if (global.item_id[t]!="") rmax=t;
//Hold
if (stage=0) { isc=0; tos0=pos0; }
//
if (phase=0) {

 if (sKey(global.key_right,1) && bromide=0) { sP();
  if (stage=0) pos0=min(2,pos0+1);
  if (stage=1) pos0=min(2,pos0+1);
  if (stage=2) { if (pos0=23) { if (isc!=ceil((rmax-23)/2)*2) { pos0=22; isc+=2; } } else pos0=min(23,pos0+1); } //was rmax
 }
 
 if (sKey(global.key_down,1) && bromide=0) { sP();
  if (substage!=-1) {
   pos3=min(2,pos3+1);
  } else {
   if (stage=2) { if (pos0>21) { isc+=2; } else pos0=min(23,pos0+2); }
   if (stage=3) {
    pos0=pos0+1;
    if (global.party[pos0]=-1) pos0-=1;
   }
  }
 }
 
 if (sKey(global.key_left,1) && bromide=0) { sP();
  if (stage=0) pos0=max(0,pos0-1);
  if (stage=1) pos0=max(1,pos0-1);
  if (stage=2) { if (pos0=0) { if (isc!=0) { pos0=1; isc-=2; } } else pos0=max(0,pos0-1); }
 }
 
 if (sKey(global.key_up,1) && bromide=0) { sP();
  if (substage!=-1) {
   pos3=max(0,pos3-1);
  } else {
   if (stage=2) { if (pos0<2) { isc-=2; } else pos0=max(0,pos0-2); }
   if (stage=3) pos0=max(0,pos0-1);
  }
 }
 
 if (stage=2) {
  isc=min(isc,ceil((qmax-24)/2)*2); //
  isc=max(0,isc);
  pos0=min(pos0,qmax-isc);
  if (item[pos0+isc]="") pos0-=1;
 }
 pos0=max(0,pos0);

if (sKey(global.key_action,1)) { sP(1);
if (stage=0) {
if (pos0=0) {
stage=3;
pos0=0;
} else if (pos0=1 && item[0]!="No items") {
stage=2;
pos0=0;
} else if (pos0=2) {
stage=1;
pos0=1;
}
} else if (stage=1) {
if (pos0=1) { stage=0; pos0=2; }
else { global.freeze=0; if (room=RomTest) room_goto(RomConfig); else room_goto(RomTitle); }
} else if (stage=2) {
refItem(global.item_id[pos0+isc]);
if (global.tClass="Item") { 
if (global.tEffect="Picture") {
if (global.tName="Ivory's Bromide") bromide=1;
if (global.tName="Shrekmono Piccie") bromide=2;
if (global.tName="Gun's Sticker") bromide=3;
if (global.tName="Battlers Tome 1") bromide=4;
if (global.tName="Battlers Tome 2") bromide=5;
if (global.tName="Battlers Tome 3") bromide=6;
} else if (global.tEffect="Warp Device") {
event_user(15);
} else if (global.tEffect="Magic Lamp") {
with (oController) event_user(12);
} else if (global.tEffect="Summon Hiratio") {
sP(-1);
} else {
itmstage=global.item_id[pos0+isc];
itmslot=pos0;
stage=3;
pos0=0;
}
}
} else if (stage=3) {
if (itmstage!="") { 
sound_play(mItemUse);
sItemUse(itmstage,global.party[pos0]);
sItem(itmstage,-1);
sItemShow("global.item_id",0,0,2,2);
if (sItem(itmstage)<1) {
itmstage="";
stage=2;
pos0=0;
}
} else if (substage=-1) { 
substage=pos0;
pos3=0;
} else { //equip
sibstage=pos0; 
phase=1; 
stage=1; 
if (pos3=0) sItemSep(global.char_weapon[global.party[pos0]]); 
else if (pos3=1) sItemSep(global.char_armour[global.party[pos0]]); 
else sItemSep("Bling");
sItemShow("itemf",2,0,2,1);
pos0=0; //reset when go to equip
}
}
}
if (sKey(global.key_cancel,1)) { sP(-1);
if (bromide!=0) bromide=0;
else if (stage=1) { stage=0; pos0=2; }
else if (stage=0) { global.freeze=0; instance_destroy(); }
else if (stage=2) { stage=0; pos0=1; }
else if (stage=3) { 
if (itmstage!="") { itmstage=""; pos0=0; stage=2; }
else if (substage=-1) { stage=0; pos0=0; sItemShow("global.item_id",0,0,2,2); }
else { substage=-1; }
}
}
if (stage=0) {
if (pos0=0) desc="Change equipment, view status and skillz.";
if (pos0=1) desc="View and use items gathered on your expedition.";
if (pos0=2) desc="Leave the post-cyberpocalypse.";
} else if (stage=1) {
if (pos0=1) desc="Go back to the time-out menu.";
if (pos0=2) desc="Take a break and chill.";
} else if (stage=2) {
pos0=min(imax,pos0);
refItem(item[pos0+isc]);
desc=global.tDesc;
} else if (stage=3) {
if (substage!=-1) {
if (pos3=0) desc="Change " +sAlBhed(global.char_name[global.party[substage]],1) +"'s weapon.";
if (pos3=1) desc="Change " +sAlBhed(global.char_name[global.party[substage]],1) +"'s armour.";
if (pos3=2) desc="Change " +sAlBhed(global.char_name[global.party[substage]],1) +"'s bling.";
} else if (itmstage="") {
desc="Select a character and press action to view status.";
} else desc="Use " + itmstage + " on who? ("+ string(global.item_amount[itmslot]) + " left)";
}
} else { ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////BUY AND SELL
if (sKey(global.key_right,1)) { sP();
if (stage=0) pos0=min(2,pos0+1);
if (stage=1) {
pos1+=1;
if (global.party[pos1-1]=-1) pos1-=1;
if (sibstage!=-1) pos1=0;
}
if (stage=2) { if (pos0=23) { if (isc!=ceil((rmax-23)/2)*2) { pos0=22; isc+=2; } } else pos0=min(23,pos0+1); }
if (stage=0) {
if (sal[pos0]="") pos0-=1;
if (sal[pos0]="Buy") sItemShow("("+string(keeper)+").itemf",2,0,2,1);
else if (sal[pos0]="Sell") sItemShow("global.item_id",1,0,2,2);
}
}
if (sKey(global.key_down,1)) { sP();
if (stage=2) { if (pos0>21) { isc+=2; } else pos0=min(23,pos0+2); }
if (stage=1) { if (pos0>7) isc+=1; else pos0=min(8,pos0+1); }
}
if (sKey(global.key_left,1)) { sP();
if (stage=0) pos0=max(0,pos0-1);
if (stage=1) pos1=max(0,pos1-1);
if (stage=2) { if (pos0=0) { if (isc!=0) { pos0=1; isc-=2; } } else pos0=max(0,pos0-1); }
if (stage=0) {
if (sal[pos0]="Buy") sItemShow("("+string(keeper)+").itemf",2,0,2,1);
else if (sal[pos0]="Sell") sItemShow("global.item_id",1,0,2,2);
}
}
if (sKey(global.key_up,1)) { sP();
if (stage=2) { if (pos0<2) { isc-=2; } else pos0=max(0,pos0-2); }
if (stage=1) { if (pos0=0) isc-=1; else pos0=max(0,pos0-1); }
}

if (stage=2) {
 isc=min(isc,ceil((qmax-24)/2)*2); //-7
 isc=max(0,isc);
 pos0=min(pos0,qmax-isc);
 if (item[pos0+isc]="") pos0-=1;
}
if (stage=1) {
 isc=min(isc,qmax-9);
 isc=max(0,isc);
 if (isc!=0) pos0=min(pos0,qmax-isc);
 else pos0=min(pos0,qmax-1);
}
pos0=max(0,pos0);

if (sKey(global.key_action,1)) { 
if (stage=0) { sP(1);
if (sal[pos0]="Buy") {
stage=1;
pos0=0;
} else if (sal[pos0]="Sell" && item[0]!="No items") {
stage=2;
pos0=0;
} else if (sal[pos0]="Leave") { 
global.freeze=0; instance_destroy(); 
}
} else if (stage=2) { ///////////////////////////////////////////////////////////sell
refItem(item[pos0+isc]);
if (global.tCansell=1) {
sItem(item[pos0+isc],-1);
sItem("gold",floor(global.tValue/2));
sItemShow("update");
sP(1);
} else sP(-1);
} else if (stage=1) {
 refItem(item[pos0+isc]);
 if ((sItem("goldcheck",global.tValue)!=0 && sItem(item[pos0+isc])<99) || sibstage!=-1) { sP(1); //buy goes here gz
  if (sibstage=-1) {
   if (global.vending=0) sItem("gold",-global.tValue);
   else sItem("gold",-(global.tValue*2));
   sItem(item[pos0+isc],1);
  }
  //equip after buy
  //show_message(string(pos1) + " pos1 " + string(vaf[pos0]) + " vaf " + string(pos0) + " pos0 " + string(sibstage));
  if ((pos1!=0 && vaf[pos0]<3) || sibstage!=-1) {
   sItem(item[pos0+isc],-1);
   if (sibstage=-1) nat=pos1-1;
   else nat=sibstage;
   //show_message('equip attempt on ' + string(global.party[nat]) + ' with item class ' + global.tClass);
   if (global.tClass="Nothing") {
    if (pos3=0) { sItem(global.char_eweapon[global.party[nat]],1); global.char_eweapon[global.party[nat]]="Nothing"; }
    if (pos3=1) { sItem(global.char_earmour[global.party[nat]],1); global.char_earmour[global.party[nat]]="Nothing"; }
    if (pos3=2) { sItem(global.char_eaccess[global.party[nat]],1); global.char_eaccess[global.party[nat]]="Nothing"; }
   } else {
    if (global.tClass=eweapon[nat]) {
     sItem(global.char_eweapon[global.party[nat]],1);
     global.char_eweapon[global.party[nat]]=item[pos0+isc];
    }
    if (global.tClass=earmour[nat]) {
     sItem(global.char_earmour[global.party[nat]],1);
     global.char_earmour[global.party[nat]]=item[pos0+isc];
    }
    if (global.tClass="Bling") {
     sItem(global.char_eaccess[global.party[nat]],1);
     global.char_eaccess[global.party[nat]]=item[pos0+isc];
    }
   } 
  }
  //do equip malarky
  sItemShow("update");
  if (sibstage!=-1) {
   if (pos3=0) sItemSep(global.char_weapon[global.party[sibstage]]); 
   else if (pos3=1) sItemSep(global.char_armour[global.party[sibstage]]); 
   else sItemSep("Bling");
   sItemShow("itemf",2,0,2,1);
  }
 } else sP(-1); //cant buy
}
}

if (sKey(global.key_cancel,1)) { sP(-1);
if (stage=2) { stage=0; pos0=1; isc=0; }
else if (stage=1) { 
if (sibstage=-1) { //sibstage
stage=0; pos0=0; 
} else {
phase=0; stage=3; pos0=substage; isc=0;
}
} else if (stage=0) { global.freeze=0; instance_destroy(); }
}
if (stage=0) {
if (sal[pos0]="Buy") desc="Buy items.";
if (sal[pos0]="Sell") desc="Sell items.";
if (sal[pos0]="Leave") desc="Leave shop.";
} else if (stage=2) {
//pos0=min(imax,pos0);
refItem(item[pos0+isc]);
desc=global.tDesc;
} else if (stage=1) {
//pos0=min(imax,pos0);
refItem(item[pos0+isc]);
desc=global.tDesc;
}
}
