global.descriptor="Diagnose Aspergers";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; walkdist=120; stage=0; wdoing=1; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=6; ill=1; sS(mBAspie); }

if (fff=10) { img=5; }
if (fff=20) { img=6; }
if (fff=30) { img=5; }
if (fff=40) { img=6; }
if (fff=50) { img=5; }
if (fff=60) { sBCondition("inflict","aspergers",target); img=6; }

if (fff>69) { doing=-1; img=1; ill=0; }
}
if (fff!=0) fff+=1;
