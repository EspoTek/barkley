global.descriptor="Parkinsons Chomp";
if (exec!=-1) { fff=0; exec=-1; walkdist=55; stage=0; wdoing=0; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; }
img=4
if (fff>30) { depth=target.depth-1; img=5; }
if (fff=31) { sDamage(doing); if (floor(random(2))=0) { sBCondition("inflict","parkinsons",target); } else { sDamageC(target,"MISS",c_ltgray); } sound_play(mKillcut); }
if (fff>44) { doing=-1; img=0; }
}
if (fff!=0) fff+=2;
