var jz;
jz=argument0
for (m=0; m<10; m+=1) ene[m]="";
//Catacombs - 2 optional
group="catacomb";
if (jz='c1') {
 moves='d,d,d,d,r,r,u,u,u,u,l,l';
 ene[0]="oBSlamspectre,0,48,96";
} else if (jz='c2') {
 moves='fd,w,w,fl,w,fr,w,fu,w';
 ene[0]="oBBallbrain,0,32,128";ene[1]="oBBallbrain,0,64,64";
} else if (jz='c3') {
 moves='d,d,d,r,u,u,u,l';
 ene[0]="oBZomballer,0,48,96";
} else if (jz='c4') {
 moves='l,l,l,l,l,l,d,d,w,w,u,u,r,r,r,r,r,r,w';
 ene[0]="oBBallbrain,0,48,64";ene[1]="oBSlamspectre,0,32,128";
} else if (jz='c5') {
 moves='d,d,d,r,r,r,u,u,u,l,l,l';
 ene[0]="oBBallbrain,0,32,128";ene[1]="oBSlamspectre,0,64,64"; //dupe
} else if (jz='c6') {
 moves='d,r,u,l';
 ene[0]="oBSlamspectre,0,48,64";ene[1]="oBSlamspectre,0,16,128";
} else if (jz='c7') {
 moves='u,u,w,d,d,fu,w';
 ene[0]="oBBallbrain,0,32,96";ene[1]="oBBallbrain,0,80,64";ene[2]="oBBallbrain,0,48,128";
} else if (jz='c8') {
 moves='l,l,l,l,l,l,l,l,r,r,r,r,r,r,r,r';
 ene[0]="oBBallbrain,0,24,112";ene[1]="oBZomballer,0,56,80";
} else if (jz='c9') {
 moves='l,l,l,w,r,r,r,w,fu,w,fd,w';
 ene[0]="oBBallbrain,0,48,64";ene[1]="oBSlamspectre,0,64,96";ene[2]="oBBallbrain,0,16,128";
} else if (jz='c10') {
 moves='fr,w,r,w,l,w';
 ene[0]="oBSlamspectre,0,64,64";ene[1]="oBZomballer,0,32,128";
} else if (jz='c11') {
 moves='r,r,r,d,d,d,u,u,u,l,l,l,l,l,l,d,d,d,u,u,u,r,r,r';
 ene[0]="oBZomballer,0,56,80";ene[1]="oBZomballer,0,32,128";
} else if (jz='c12') {
 moves='r,r,r,l,r,l,l,l';
 ene[0]="oBBallbrain,0,64,96";ene[1]="oBSlamspectre,0,48,64";ene[2]="oBSlamspectre,0,16,128";
}
if (ene[0]!="") exit;
//Sewers
group='sewer';
if (jz='e1') {
 moves='u,u,u,u,d,d,d,d,d,u';
 ene[0]="oBWhistle,0,80,64";ene[1]="oBBallspider,0,48,128";
} else if (jz='e2') {
 moves='d,d,r,r,u,u,l,l';
 ene[0]="oBBallspider,0,64,64";ene[1]="oBBalldroid,0,64,96";ene[2]="oBWhistle,0,32,128";
} else if (jz='e3') {
 moves='l,fd,w,w,r,fu,w,w';
 ene[0]="oBBalldroid,0,80,64";ene[1]="oBBalldroid,0,64,96";ene[2]="oBWhistle,0,32,96";ene[3]="oBBalldroid,0,48,128";
} else if (jz='e4') {
 moves='fu,w,w,w,w,w,w,w,fd,w';
 ene[0]="oBWhistle,0,64,64";ene[1]="oBBalldroid,0,32,96";ene[2]="oBBalldroid,0,64,96";ene[3]="oBBalldroid,0,16,128";ene[4]="oBBalldroid,0,48,128";
} else if (jz='e5') {
 moves='d,d,d,l,l,l,r,r,r,u,u,u';
 ene[0]="oBBalldroid,0,88,48";ene[1]="oBBalldroid,0,64,64";ene[2]="oBBalldroid,0,72,80";ene[3]="oBBalldroid,0,48,96";ene[4]="oBBalldroid,0,56,112";ene[5]="oBBalldroid,0,32,128";
} else if (jz='e6') {
 moves='r,r,r,r,r,l,l,l,l,l';
 ene[0]="oBBallspider,0,56,80";ene[1]="oBBalldroid,0,24,112";ene[2]="oBBalldroid,0,48,128";ene[3]="oBBalldroid,0,24,144";
} else if (jz='e7') {
 moves='fd,w,w,fr,w,w';
 ene[0]="oBWhistle,0,72,48";ene[1]="oBWhistle,0,64,96";ene[2]="oBWhistle,0,24,144";
} else if (jz='e8') {
 moves='d,r,u,l';
 ene[0]="oBBallspider,0,64,64";ene[1]="oBBalldroid,0,64,96";ene[2]="oBBalldroid,0,56,112";ene[3]="oBWhistle,0,24,144";
} else if (jz='e9') { //after sewer
 moves='r,r,r,w,d,w,l,l,l,w,u,w';
 ene[0]="oBBalldroid,0,72,48";ene[1]="oBBalldroid,0,48,64";ene[2]="oBBalldroid,0,24,80";ene[3]="oBBalldroid,0,32,96";ene[4]="oBBalldroid,0,64,96";ene[5]="oBBalldroid,0,8,112";ene[6]="oBBalldroid,0,16,128";ene[7]="oBBalldroid,0,24,144";
} else if (jz='e10') {
 moves="d,d,d,d,w,w,u,u,u,u,w,w";
 ene[0]="oBBallspider,0,48,64";ene[1]="oBBalldroid,0,72,80";ene[2]="oBBalldroid,0,64,96";ene[3]="oBBalldroid,0,56,112";ene[4]="oBWhistle,0,32,128";
} else if (jz='e11') {
 moves="r,r,r,r,r,r,r,l,l,l,l,l,l,l";
 ene[0]="oBBallspider,0,64,64";ene[1]="oBWhistle,0,64,96";ene[2]="oBBallspider,0,40,144";
} else if (jz='e12') {
 moves="d,d,d,w,r,u,u,u,w,l";
 ene[0]="oBWhistle,0,64,64";ene[1]="oBWhistle,0,40,80";ene[2]="oBWhistle,0,24,112";ene[3]="oBWhistle,0,32,128";
} else if (jz='e13') {
 moves='r,r,u,u,w,w,d,d,l,l,w,w';
 ene[0]="oBBallspider,0,64,64";ene[1]="oBBallspider,0,32,96";ene[2]="oBBallspider,0,40,144";
}
if (ene[0]!="") exit;
//Diekembe - 4 battles - 1 boss
group="diekembe";
if (jz='d1') {
 alarm[10]=1; /////////////////////////////kill
 moves="fu,w,w,r,fu,w,w,l";
 ene[0]="oBDreadref,0,80,64";ene[1]="oBWhistle,0,40,80";ene[2]="oBWhistle,0,32,96";ene[3]="oBWhistle,0,24,112";ene[4]="oBDreadref,0,48,128";
} else if (jz='d2') {
 moves='l,l,l,w,r,r,r,w';
 ene[0]="oBDreadref,0,64,64";ene[1]="oBBalldroid,0,40,80";ene[2]="oBBalldroid,0,72,80";ene[3]="oBBalldroid,0,24,112";ene[4]="oBBalldroid,0,56,112";ene[5]="oBBalldroid,0,8,144";ene[6]="oBBalldroid,0,40,144";
} else if (jz='d3') {
 moves='l,d,l,u,r,r';
 ene[0]="oBDreadref,0,64,64";ene[1]="oBBalldroid,0,72,80";ene[2]="oBBalldroid,0,64,96";ene[3]="oBBalldroid,0,56,112";ene[4]="oBWhistle,0,32,128";
} else if (jz='d4') {
 alarm[10]=1; ////////////////////////////////////kill
 moves='u,l,d,d,d,d,r,u,u,u';
 ene[0]="oBBalldroid,0,88,48";ene[1]="oBBalldroid,0,80,64";ene[2]="oBBalldroid,0,64,96";ene[3]="oBDreadref,0,16,96";ene[4]="oBBalldroid,0,48,128";ene[5]="oBBalldroid,0,40,144";
} else if (jz='d5') {
 alarm[10]=1; ////////////////////////////////////kill
 moves="d,l,u,r";
 ene[0]="oBWhistle,0,24,144";ene[1]="oBWhistle,0,72,48";ene[2]="oBWhistle,0,24,80";ene[3]="oBWhistle,0,64,96";ene[4]="oBWhistle,0,8,112";
} else if (jz='d6') {
 moves="r,w,l,w,d,l,u";
 ene[0]="oBDreadref,0,40,80";ene[1]="oBDreadref,0,64,96";ene[2]="oBDreadref,0,24,112";
} else if (jz='d7') {
 alarm[10]=1; //////////////////////////////////kill
 moves="w,l,u,w,d,w,r,u,w,d";
 ene[0]="oBBalldroid,0,88,48";ene[1]="oBBalldroid,0,48,64";ene[2]="oBBalldroid,0,56,80";ene[3]="oBBalldroid,0,16,96";ene[4]="oBBalldroid,0,40,112";ene[5]="oBBalldroid,0,16,128";ene[6]="oBBalldroid,0,40,144";
} else if (jz='d8') {
 moves="l,w,fr,w,fl,w,r,r,r,w,fl,w,fr,w,l,l";
 ene[0]="oBWhistle,0,88,48";ene[1]="oBDreadref,0,64,96";ene[2]="oBWhistle,0,40,144";
}
if (ene[0]!="") exit;
//Spalding - 9 battles - 1 boss
group="spalding";
if (jz='p1') {
 moves="d,d,r,r,r,w,w,l,l,l,u,u,w,w";
 ene[0]="oBMech,0,48,64";ene[1]="oBMutantballer,0,72,80";ene[2]="oBMutantballer,0,56,112";ene[3]="oBMech,0,16,128";
} else if (jz='p2') {
 moves="r,r,r,u,l,l,l,d";
 ene[0]="oBMutantballer,0,48,64";ene[1]="oBSlamphantom,0,72,80";ene[2]="oBMech,0,48,96";ene[3]="oBSlamphantom,0,56,112";ene[4]="oBMutantballer,0,16,128";
} else if (jz='p3') {
 moves='l,l,l,w,w,w,r,r,r,w,w,w';
 ene[0]="oBMutantballer,0,80,64";ene[1]="oBMutantballer,0,40,80";ene[2]="oBMutantballer,0,24,112";ene[3]="oBMutantballer,0,48,128";
} else if (jz='p4') {
 moves="d,d,l,r,r,u,u,l";
 ene[0]="oBMech,0,80,64";ene[1]="oBMech,0,24,80";ene[2]="oBMech,0,48,96";ene[3]="oBMech,0,8,112";ene[4]="oBMech,0,40,144";
} else if (jz='p5') {
 moves='l,l,l,l,w,r,r,r,r,w';
 ene[0]="oBSlamphantom,0,48,128";ene[1]="oBSlamphantom,0,80,64";ene[2]="oBSlamphantom,0,40,80";ene[3]="oBSlamphantom,0,64,96";ene[4]="oBSlamphantom,0,24,112";
} else if (jz='p6') {
 moves='u,l,l,l,l,l,l,l,d,d,r,r,r,r,r,r,r';
 ene[0]="oBSlamphantom,0,16,96";ene[1]="oBMutantballer,0,80,64";ene[2]="oBMutantballer,0,64,96";ene[3]="oBMutantballer,0,48,128";
} else if (jz='p7') {
 moves="w,w,d,d,u,u,fd";
 ene[0]="oBSlamphantom,0,16,96";ene[1]="oBMech,0,80,64";ene[2]="oBMutantballer,0,64,96";ene[3]="oBMech,0,48,128";
} else if (jz='p8') {
 moves="l,l,l,l,l,d,d,l,w,w,r,u,u,r,r,r,r,r,w";
 ene[0]="oBSlamphantom,0,56,112";ene[1]="oBMech,0,64,64";ene[2]="oBSlamphantom,0,72,80";ene[3]="oBMech,0,16,96";ene[4]="oBMech,0,32,128";
} else if (jz='p9') {
 moves="fu,w,w,fr,w,w,fd,w,w";
 ene[0]="oBMutantballer,0,80,64";ene[1]="oBMech,0,16,96";ene[2]="oBMutantballer,0,48,128";
}
if (ene[0]!="") exit;
//Cuchulainn - 9 battles - 1 boss (barkley only)
group='cuch';
if (jz='u1') {
 moves='r,r,r,r,r,r,d,d,d,l,l,l,l,l,l,u,u,u';
 ene[0]="oBWhistle,0,64,64";ene[1]="oBBalldroid,0,72,80";ene[2]="oBSlamphantom,0,16,96";ene[3]="oBBalldroid,0,64,96";ene[4]="oBBalldroid,0,56,112";//ene[5]="oBZomballer,0,32,128";
} else if (jz='u2') {
 moves='d,d,d,w,fr,w,fl,w,u,u,u,w,fr,w,fl,w';
 ene[0]="oBMech,0,64,64";ene[1]="oBSlamspectre,0,24,80";ene[2]="oBBanshee,0,64,96";ene[3]="oBBallbrain,0,8,112";//ene[4]="oBMutantballer,0,32,128";
} else if (jz='u3') {
 moves='l,l,l,l,l,l,fd,w,r,r,r,r,r,r,fd,w';
 ene[0]="oBSlamphantom,0,48,64";ene[1]="oBDreadref,0,72,80";ene[2]="oBZomballer,0,48,96";ene[3]="oBDreadref,0,56,112";//ene[4]="oBSlamphantom,0,16,128";
} else if (jz='u4') {
 moves='l,u,u,u,r,d,d,d';
 ene[0]="oBBanshee,0,64,64";ene[1]="oBBanshee,0,24,80";ene[2]="oBBanshee,0,64,96";ene[3]="oBBanshee,0,8,112";//ene[4]="oBBanshee,0,32,128";
} else if (jz='u5') {
 moves='r,r,r,r,r,r,r,d,d,d,d,d,l,l,l,l,l,l,l,l,u,u,u,u,u,r';
 ene[0]="oBBallspider,0,64,64";ene[1]="oBSlamphantom,0,24,80";ene[2]="oBWhistle,0,64,96";ene[3]="oBSlamphantom,0,8,112";//ene[4]="oBBallspider,0,40,144";
} else if (jz='u6') {
 moves='r,r,r,u,l,l,l,d';
 ene[0]="oBBallbrain,0,48,64";ene[1]="oBBanshee,0,72,80";ene[2]="oBMutantballer,0,16,96";ene[3]="oBBalldroid,0,40,112";ene[4]="oBBalldroid,0,16,128";//ene[5]="oBBalldroid,0,40,144";
} else if (jz='u7') {
 moves='d,d,d,u,u,u';
 ene[0]="oBBallspider,0,80,64";ene[1]="oBBanshee,0,24,80";ene[2]="oBSlamspectre,0,48,96";ene[3]="oBMech,0,8,112";//ene[4]="oBDreadref,0,32,128";
} else if (jz='u8') { //dead
 alarm[10]=1;
 moves='u,u,d,d';
 ene[0]="oBWhistle,0,88,48";ene[1]="oBMutantballer,0,72,80";ene[2]="oBZomballer,0,40,80";ene[3]="oBMutantballer,0,56,112";ene[4]="oBZomballer,0,24,112";ene[5]="oBWhistle,0,40,144";
} else if (jz='u9') { //dead
 alarm[10]=1;
 moves='l,u,u,u,r,d,d,d';
 ene[0]="oBSlamphantom,0,24,48";ene[1]="oBMech,0,80,64";ene[2]="oBMech,0,56,80";ene[3]="oBBanshee,0,64,96";ene[4]="oBMech,0,16,128";ene[5]="oBMech,0,40,144";
}