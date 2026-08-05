//Diabetes breath
global.descriptor="Diabetes Breath";
if (exec!=-1) { 
if (_bp<20) { event_user(2); exit; }
else _bp-=20;
fff=0; exec=-1; walkdist=80; stage=0; wdoing=3; walk=target; exit; }
if (stage=0) {
if (fff=0) { 
fff=1;
breath=1;
tob=oBSlamspectreP0;
sS(mSlamspectre0);
}
if (fff<30) { instance_create(x+19,y-4,tob); tob.depth=target.depth-1; }
else { sBCondition("inflict","diabetes",target); stage=1; breath=0; }
} else if (stage=1) {
if (instance_exists(tob)=0) { doing=-1; with (tob) instance_destroy();  }
}
if (fff!=0) fff+=1;
