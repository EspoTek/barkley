global.descriptor="Spider Slam";
if (exec!=-1) { 
if (_bp<5) { event_user(floor(random(2))); exit; }
else {
_bp-=5; fff=0; exec=-1; walkdist=150; stage=0; wdoing=2; walk=target; exit; } }
if (stage=0) {
if (fff=0) { fff=1; path_start(pSpiderslam,4,0,0); }
if (fff>19) { image_angle+=18; }
} else if (stage=1) {
doing=-1; img=0; image_angle=0;
}
if (fff!=0) fff+=1;
