//H-H-Head Shot
global.descriptor="H-H-Head Shot";
if (exec!=-1) { fff=1; exec=-1; stage=0; wdoing=1; walk=target; walkdist=50; wspd=6; exit; }
if (stage=0) {
img=9;
if (fff>19) { fff=1; stage=0.5; path_start(pJordan0,7,3,0); gun=2; img=10; }
} else if (stage=0.5 || stage=0.6) {
depth=target.depth-1;
} else if (stage=1) {
if (fff>19) { fff=1; img=1; stage=0; doing=-1; }
} else if (stage=2) {
doing=-1; stage=0;
}
if (fff!=0) fff+=1;
exit;
