global.descriptor="Greater Earth Spire";
global.b_obj=global.b_middle;
if (force=1) { event_user(8); exit; }

if (exec!=-1) { 
if (_bp<floor(_rbp/2)) { event_user(3); exit; }
_bp-=floor(_rbp/2);
fff=1; exec=-1; stage=0; doing=2; exit; 
}

if (stage=0) {
depth=target.depth-1;
if (fff=1) img=5;
if (fff=10) { sS(mBEarthr); img=6; shadow=1; smt=52; }
if (fff>10 && fff<30) { smt=max(0,smt-5); }
if (fff=30) { sDamage(doing); }
if (fff>40 && fff<60) smt=min(52,smt+5);
if (fff>60) { shadow=0; doing=-1; img=1; ended=0; finish=1; event_user(7); }

}
if (fff!=0) fff+=1;
