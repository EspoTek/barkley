global.descriptor="Ghoulish Jump";
if (exec!=-1) { fff=0; exec=-1; walkdist=142; stage=0; wdoing=0; walk=target; exit; }
if (stage=0) {
if (fff=0) { path_start(pGhoul,6,0,0); fff=1; }
depth=target.depth;
}
if (fff!=0) fff+=2;

