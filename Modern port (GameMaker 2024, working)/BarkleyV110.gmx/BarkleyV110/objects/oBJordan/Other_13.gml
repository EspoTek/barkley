//Defy clispaeth
global.descriptor="Defy Clispaeth";
if (exec!=-1) { 
if (_bp<5) { event_user(floor(random(3))); exit; }
if (clis=1) { event_user(floor(random(3))); exit; }
_bp-=5; doing=3; fff=1; img=11; stage=0; walk=-999; clis=1;
}
if (stage=0) {
if (fff>19) { fff=1; img=12; sBCondition("guard",999,id); stage=1; }
} else if (stage=1) {
if (fff>19) { img=1; stage=0; doing=-1; finish=1; ended=0; }
}
if (fff!=0) fff+=1;

exit;
