//Contaminated Gatorade - img=5
if (exec!=-1) { 
if (bottle=0) { event_user(1); exit; }
fff=0; exec=-1; walkdist=150; stage=0; wdoing=2; walk=target; exit; }
if (stage=0) {
if (fff=0) { global.b_obj=target; sS(mBWaterfall); bottle=0.5; fff=1; img=5; }
{ tttmp=instance_create(x+22,y-15,oBCont); tttmp.target=target; }
if (fff>29) { img=1; bottle=0; stage=2; sBCondition("inflict","montezuma",target); sound_stop(mBWaterfall); fff=1; }
} else if (stage=2) {
if (fff>9) { doing=-1; }
}
if (fff!=0) fff+=1;
