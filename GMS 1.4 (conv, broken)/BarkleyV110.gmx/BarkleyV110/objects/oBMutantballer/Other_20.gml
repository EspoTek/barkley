//Evolve
if (exec!=-1) { exec=-1; walkdist=-25; stage=0.5; doing=10; walk=slav; exit; }
global.descriptor="Evolve";
if (stage=0.5) {
if (wdone=1) { wdone=0; stage=0; img=7; fof=0; rou=16/2; fff=1; }
} else if (stage=0) {
if (fff-1>rou/3) {
fof+=1;
fff=1;
rou-=1;
if (img=1) img=7;
else img=1;
}
if (fof>33/3) { stage=1; img=1; evolve=1; }
} else if (stage=1) {
walk=slav;
walkdist=5;
if (wdone=1) { doing=-1; wdone=0; finish=1; }
}
if (fff!=0) fff+=1;
