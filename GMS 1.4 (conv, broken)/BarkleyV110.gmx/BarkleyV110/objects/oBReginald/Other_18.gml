//Put exhaust turn here too
global.descriptor="Spell Exhaustion";
if (exec!=-1) { fff=0; exec=-1; stage=0; doing=8; exit; }

if (stage=0) {
if (fff=0) { 
_rguard=_rguard*2;
_rbrain=_rbrain*2;
_guard=_guard*2;
_brain=_brain*2;
sVerifyStats();
force=0;
fff=1; img=2; ill=0;  
}
if (fff=5) shake=10;
if (fff=15) shake=10;
if (fff>30) { doing=-1; img=1; ill=0; finish=1; ended=0; }
}
if (fff!=0) fff+=1;
