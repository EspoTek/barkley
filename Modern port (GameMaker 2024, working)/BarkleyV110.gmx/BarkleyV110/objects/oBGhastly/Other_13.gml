var tttmp;
global.descriptor="Head Bash";
if (exec!=-1) { fff=0; exec=-1; stage=0; doing=3; exit; }
global.b_obj=global.b_middle;
if (stage=0) {
if (fff=0) { fff=1; img=5; { tttmp=instance_create(x,y,oBHead); tttmp.target=target; } stage=1; }
} if (stage=1 && instance_exists(oBHead)=0) {
img=1;
doing=-1;
ended=0;
finish=1;
}
if (fff!=0) fff+=1;

