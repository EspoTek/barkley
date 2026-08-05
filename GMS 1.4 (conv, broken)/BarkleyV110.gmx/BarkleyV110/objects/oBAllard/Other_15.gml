global.descriptor="Self Lobotomy";
if (exec!=-1) { 
if (_bp>0) { hgh=max(0,hgh-1); event_user(1+floor(random(4))); exit; }
fff=0; exec=-1; stage=0; wdoing=5; walk=slav; walkdist=-30; exit; 
}
if (stage=0) {
if (fff=0) { fff=1; img=8; }
if (fff=15) { img=9; sS(mKillcut); }
if (fff=30) { img=10; }
if (fff=45) { img=11; }
if (fff=60) { img=9; _bp=_rbp; sDamageC(id,"BP +100%",c_lime);  }
if (fff>69) { doing=-1; img=1; }
}
if (fff!=0) fff+=1;
