global.descriptor="Glory of BBall";
if (exec!=-1) { 
if (_bp<15) { event_user(floor(random(3))); exit; }
_bp-=15; fff=0; exec=-1; stage=0; wdoing=4; walk=slav; walkdist=-30; exit; 
}
if (stage=0) {
if (fff=0) { fff=1; img=5; }
if (fff=10) { sBCondition("cure","all",id); sBCondition("vp",floor(_rvp/3),id); }
if (fff>29) { doing=-1; img=1; }
}
if (fff!=0) fff+=1;
