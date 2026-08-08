if (room=RomDeath0) {
instance_destroy();
exit;
}
sP(1);
oBarkley.move="";
global.freeze=1;
pos0=0;
tos0=0;
pos1=0;
pos3=0; //equip
bromide=0;
stage=0;
desc="";
imax=0;
phase=0;
for (v=0; v<100; v+=1) sal[v]="";
sal[0]="Buy";
sal[1]="Quit";
item[0]="";
keeper=-1;
//port: the shopkeeper stock snapshot sShop fills. Seeded empty so the Buy row
//can never read it unset outside a shop.
shopitemf[0]="";
substage=-1; //view status
sibstage=-1; //weapon
itmstage=""; //use item
sEquipped();
y+=0.5;
x+=0.5;
yn=4;
shrek=0;
isc=0; //scroll
