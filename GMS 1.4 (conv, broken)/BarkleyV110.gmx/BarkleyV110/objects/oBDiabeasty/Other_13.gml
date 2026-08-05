global.descriptor="Deadly Smile";
if (smile=1) { event_user(4); exit; }
if (exec!=-1) { 
if (_bp<10) { event_user(floor(random(3))); exit; }
_bp-=10; doing=3; bou=0; fff=1; stage=0; exit;
}
if (stage=0) {
img=4;
if (fff>29) { img=4; stage=0; doing=-1; finish=1; smile=1; ended=0; }
}
if (fff!=0) fff+=1;
