//get exp and gold
global.b_gold=0;
global.b_exp=0;
with (oBattler) {
global.b_gold+=_gold;
global.b_exp+=_exp;
}
//turns
sAgility("init");
alarm[1]=1;
if (firststrike!=0) {
if (firststrike=-1) sIntFastest(1);
else sIntFastest(0);
fest=0;
}
