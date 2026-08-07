global.descriptor="Dipsy Doo Dunkeroo";
//global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; walkdist=162; stage=0; wdoing=2; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=10; }
if (fff=10) { path_start(pGarnett,6,0,0); img=11; }
if (fff=25) img=12;
if (fff=40) img=13;
} else if (stage=2) {
doing=-1; img=1; image_xscale=-1;
}
if (fff!=0) fff+=1;
