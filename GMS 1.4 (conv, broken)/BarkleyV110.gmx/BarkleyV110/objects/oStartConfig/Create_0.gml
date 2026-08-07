if (global.displayc=1) { game_restart(); exit; }
sV();
img=instance_number(oStartConfig)-1;
if (img=0) {
y=1;
x+=8;
//y+=0.5;
//x-=0.5;
x-=1;
global.control=0; //one guy only
global.edit=-1;
}
if (img=4) global.sat[img]=0;
ys=y+27;
srp=sStartConfig;
if (img<6) {
instance_create(x,y+48,oStartConfig);
}
if (img=0) { s1="Fit Window    Integer"; s0="SCALING"; xs=x+12; spc=62; global.tt[img]=2; }
if (img=1) { s1="Windowed      Full Screen"; s0="SCREEN"; xs=x+9; spc=69; global.tt[img]=2; }
if (img=2) { s1="1      2      3      4      5"; s0="BRIGHTNESS"; xs=x+18; spc=24; global.tt[img]=5; }
if (img=3) { s1="Slow        Normal      Fast"; s0="TEXT SPEED"; xs=x+10; spc=49; global.tt[img]=3; }
if (img=4) { s1="Default     Test          Exit"; s0="SETTINGS"; xs=x+8; spc=52; global.tt[img]=3; }
if (img=5) { y=145; x=1; ys=y+27; srp=sStartLanguage; s1="English      Al Bhed"; s0="LANGUAGE"; xs=x+15; spc=55; global.tt[img]=2; } //.5
if (img=6) { y=193; x=1; ys=y+16; srp=sStartLanguage; s1=""; s0="FILTER"; xs=x+11; spc=13; global.tt[img]=10; } //port: CRT shader presets; name drawn live in Draw
