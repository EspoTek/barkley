global.descriptor="Summon: Bee Swarm";
global.b_obj=global.b_middle;
if (force=1) { event_user(8); exit; }

if (exec!=-1) { 
if (_bp<floor(_rbp/2)) { event_user(3); exit; }
_bp-=floor(_rbp/2);
fff=0; exec=-1; stage=0; doing=0 exit; 
}

if (stage=0) {
depth=target.depth-1;
if (fff=0) { fff=1; img=1; ill=0; }
if (fff=5) { img=1; }
if (fff=10) { img=7; sS(mBBee); ggg=instance_create(x+30,y,oBBees); ggg.target=target; ggg.master=id; } //target=sEnemyTarget('random',!enemy);
if (fff>15) {
ill+=1;
if (ill>3) { if (instance_exists(oBBees)=0) { doing=-1; ended=0; finish=1; img=1; event_user(7); } }
else fff=4;
}
}
if (fff!=0) fff+=1;
