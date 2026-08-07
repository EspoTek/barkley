//in development
rn=random(100);
clt=movn[0];
for (i=0; i<8; i+=1) {
if (rn<clt) { rn=i; break; }
else clt+=movn[i+1];
}
exec=rn;
target=-1;
with (oBattler) {
if (enemy=0 && floor(random(2))=0) oBWhistle.target=id;
else if (oBWhistle.target<0) {
if (oBWhistle.target=-1) oBWhistle.target=-2;
else oBWhistle.target=id;
}
}
global.descriptor=move[rn];
oBattleMenu.alarm[0]=60;