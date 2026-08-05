event_inherited();
facet=0;
option[2]="Shots";
option[1]="Slam/Jam";
option[0]="Guard";
optiond[0]="Get a %66 guard bonus for your turn.";
optiond[1]="Use deadly verboten jams to inflict damage.";
optiond[2]="Assault a foe with a b-ball shot.";
footy=25;
enemy=0; 
name="Barkley";
hurts=sBBarkleyHurt;
deads=sBBarkleyDead;
defend=sBBarkleyDefend;
runs=sBBarkleyRun;
item=sBBarkleyItem;
cele=sBBarkleyCelebrate;

_vp=7321;
_bp=200;
_power=20;
_speed=20;
_guard=20;
_brain=40;
walk=-999;
wspd=3;
//
image_speed=0.2;
bal=0; //Ball sprite
ok=-9; //So bball syncs with sprite image speed
stage=0;
doing=-1;
oy=y;
bou=0;
air=0;
pass=0;
pause=5;
fsh=2;
tch=0; //target change
tpp="null";
//
ay=y; //air y
jstage=0;
fstage=0;
pstage=0;
dummy=0; //for double team
master=id;
event_user(14);
prefin=-1;
fadstat=-9; fadamt=0; //jumper deal
onrl=0;
instance_create(0,0,oBTimer);
//Infos
infoh[0]="Quick Reference:";
info[0]="Action Key - Free Throw#Cancel Key - Pass#Up Key (+ Left / Right) - Jumper#Press left or right for attack information.";
infoh[1]="Action Key - Free Throw";
info[1]="0-150% base accuracy, low damage.#Hold and release to line up with the indicator for maximum accuracy. Shoot two shots, target using left / right.";
infoh[2]="Cancel Key - Pass";
info[2]="50% base accuracy, very high damage.#Hold and release when the BBall lines up with the indicator for maximum damage.";
infoh[3]="Left + Up Key - Forward Jumper";
info[3]="100% base accuracy, high damage.#Hold and release at the height of the jump for maximum damage. Reduces guard 33% until the next turn.";
infoh[4]="Up Key - Jumper";
info[4]="150% base accuracy, medium damage.#Hold and release at the height of the jump for maximum damage.";
infoh[5]="Right + Up Key - Fadeaway Jumper";
info[5]="100% base accuracy, low damage.#Hold and release at the height of the jump for maximum damage. Gives a 33% guard bonus until the next turn.";
info[6]="";
infomax=5;

