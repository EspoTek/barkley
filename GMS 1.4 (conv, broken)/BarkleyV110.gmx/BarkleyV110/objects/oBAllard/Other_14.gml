global.descriptor="Faulty Plague Vaccine";
if (exec!=-1) { 
if (_bp=0) { event_user(1+floor(random(3))); exit; }
_bp=0; fff=0; exec=-1; walkdist=35; stage=0; wdoing=4; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=1; }
if (fff=10) { depth=target.depth-1; img=7; sDamage(doing); sBCondition("inflict","handicapable",target); sS(mKillcut); }
if (fff=25) { img=1; }
if (fff=40) { depth=target.depth-1; img=7; sDamage(doing); sBCondition("brain",-999,target); sS(mKillcut); }
if (fff=55) { img=1; }
if (fff=70) { depth=target.depth-1; img=7; sDamage(doing); sS(mKillcut); }
if (fff=85) img=1;
if (fff>95) { doing=-1; img=1; }
}
if (fff!=0) fff+=1;
