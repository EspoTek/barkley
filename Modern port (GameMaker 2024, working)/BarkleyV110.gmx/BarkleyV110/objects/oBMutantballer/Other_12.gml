//Devolve
if (exec!=-1) { 
if (evolve=0) { event_user(10); exit; }
if (_vp>_rvp/2) { event_user(sR(0,1)); exit; }
exec=-1; walkdist=-25; stage=0.5; doing=2; walk=slav; exit; }
global.descriptor="Devolve";
if (stage=0.5) {
if (wdone=1) { wdone=0; stage=0; img=1; fof=0; rou=16/2; fff=1; }
} else if (stage=0) {
if (fff-1>rou/3) {
fof+=1;
fff=1;
rou-=1;
if (img=7) img=1;
else img=7;
}
if (fof>33/3) { stage=1; img=1; evolve=0; sBCondition("vp",floor(_rvp/2),id); }
} else if (stage=1) {
walk=slav;
walkdist=5;
if (wdone=1) { doing=-1; wdone=0; finish=1; }
}
if (fff!=0) fff+=1;
