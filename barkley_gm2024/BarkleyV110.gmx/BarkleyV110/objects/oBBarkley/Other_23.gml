//base offsets from here not draw event
for (l=0; l<20; l+=1) { bx[l]=-888; by[l]=-888; }
duala=0;
dualb=0;
if (sprite_index=sBBarkleyItem) {
after=0;
bx[0]=3; by[0]=36;
}
if (sprite_index=sBBarkleyCelebrate) {
after=1;
bx[0]=56; by[0]=20;
bx[1]=52; by[1]=16;
}
if (sprite_index=sBBarkleyMuscle0) {
after=1;
bx[0]=37; by[0]=66;
bx[1]=37; by[1]=66;
bx[2]=37; by[2]=66;
bx[3]=37; by[3]=66;
bx[4]=37; by[4]=66;
bx[5]=37; by[5]=66;
bx[6]=37; by[6]=66;
bx[7]=37; by[7]=66;
}
if (sprite_index=sBBarkleyDefend) {
if (bal=6) duala=1;
after=1;
bx[0]=38; by[0]=36;
bx[1]=39; by[1]=39;
bx[2]=39; by[2]=44;
bx[3]=38; by[3]=67;
bx[4]=37; by[4]=52;
bx[5]=37; by[5]=41;
}
if (sprite_index=sBBarkleyPass0) {
after=0;
bx[0]=20; by[0]=54;
bx[0]=18; by[0]=27;
bx[1]=28; by[1]=16;
bx[2]=42; by[2]=11;
bx[3]=51; by[3]=25;
bx[4]=47; by[4]=28; 
bx[5]=42; by[5]=12;
bx[6]=-999; by[6]=-999;
bx[7]=-999; by[7]=-999;
}
if (sprite_index=sBBarkleyStand) {
if (bal=6) dualb=1;
after=0;
bx[0]=9; by[0]=35;
bx[1]=9; by[1]=41;
bx[2]=10; by[2]=52;
bx[3]=10; by[3]=65;
bx[4]=9; by[4]=43;
}
if (sprite_index=sBBarkleyRun) {
after=1;
if (bal=6) duala=1;
bx[0]=23; by[0]=35;
bx[1]=19; by[1]=37;
bx[2]=6; by[2]=66;
bx[3]=17; by[3]=54;
bx[4]=21; by[4]=45;
bx[5]=25; by[5]=36;
bx[6]=26; by[6]=36;
}
if (sprite_index=sBBarkleyFree) {
after=0;
bx[0]=7; by[0]=39;
bx[1]=33; by[1]=8;
bx[2]=-999; by[2]=-999;
}
if (sprite_index=sBBarkleyJump) {
after=0;
bx[0]=7; by[0]=39;
bx[1]=30; by[1]=7;
bx[2]=-999; by[2]=-999;
}
if (sprite_index=sBBarkleyHoly) {
after=0;
bx[0]=13; by[0]=18;
bx[1]=45; by[1]=11;
bx[2]=7; by[2]=18;
}
if (sprite_index=sBBarkleyHurt) {
after=1;
bx[0]=0; by[0]=0;
}
if (sprite_index=sBBarkleyShow) {
after=0;
bx[0]=6; by[0]=40;
bx[1]=41; by[1]=16;
bx[2]=48; by[2]=17;
bx[3]=44; by[3]=13;
bx[4]=32; by[4]=9;
bx[5]=28; by[5]=4;
bx[6]=25; by[6]=4;
bx[7]=27; by[7]=6;
bx[8]=10; by[8]=26;
bx[9]=14; by[9]=48;
}
if (sprite_index=sBBarkleyVamp) {
after=0;
bx[0]=35; by[0]=39;
bx[1]=23; by[1]=27;
bx[2]=39; by[2]=8;
bx[3]=50; by[3]=9;
bx[4]=52; by[4]=8;
bx[5]=50; by[5]=11;
bx[6]=17; by[6]=33;
}
//Mass edit
if (image_xscale=-1) { //flipped
for (l=0; bx[l]!=-888; l+=1) { 
//inv=abs(bx[l]-abs(sprite_xoffset));
inv=abs(sprite_xoffset)-bx[l];
bx[l]=inv;
by[l]=by[l]-sprite_yoffset;
}
} else { //regular
for (l=0; bx[l]!=-888; l+=1) { bx[l]=bx[l]-sprite_xoffset; by[l]=by[l]-sprite_yoffset; }
}
