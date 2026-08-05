//Default values
_vp=100;
_bp=10;
_power=1;
_guard=1;
_speed=1;
_brain=1;
_exp=1;
_gold=1;
_rvp=999;
//Conditions, and immunes
i_glaucoma=0;
i_diabetes=0;
i_parkinsons=0;
c_glaucoma=0; gou=3;
c_diabetes=0;
c_parkinsons=0;
c_aspergers=0; aou=10; d_s=0; //hurts sprite
c_slowed=0; c_sou=0;
c_stroke=0; s_s=0; c_kou=0;
c_montezuma=0; c_mou=0;
c_handicapable=0; c_hou=0;
c_fouled=0;
//Moves
for (i=0; i<8; i+=1) { move[i]=""; movn[i]=100; }
//Flash effect
alp=1; //alpha
col=c_white;
col_use=-1; //If not -1 it uses this as base color
col_stray=0; //merge color + random color
col_duration=0;
//
shake=0; sx=0; sy=0; //on hit shake
hilight=0; //if yes draw hilighted sprite
selecte=0; //when choose target
der=0; fgf=0; //Hilighting
enemy=1; //default enemy
exec=-1; //event to get data
wdoing=-1; //enemy only
img=1; //quicker image single
doing=-1; //actively doing
fixated=floor(random(5)); //fixated ai
footx=0;
footy=0;
fx=x;
fy=y;
alarm[11]=1; //apply shit after
finish=0; //when 1 means turn is done
//Not really needed but here for ease
fff=0; //to do starts and to advance stages
cou=0; //counter
//
stage=0; //for enemy
stop=0; //if 1 stop enemy draw event
editing=0; //if 1, stop certain draw things. cyberdwarf > zomballer suplex
//Kills
kill=0; kex=0; //1 would fade, kex does random to play sound or cut
cut=0; //on 1 cut in half
explode=0; //kill explode
blacker=0; //black death
//Player stuff only
prefin=-1;
running=0;
defending=0; defamt=0; //on 1 do defend
attack=0; //for player, on 1 allow hits
noshake=0; //balthios
stand=sprite_index;
option[0]="Defend";
optiond[0]="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
option[1]="Skillz";
optiond[1]="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
option[2]="Attack";
optiond[2]="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
option[3]="Item";
optiond[3]="Use an item on an ally.";
option[4]="Escape";
optiond[4]="Run from battle. %33 chance of success.";
option[5]="";
won=0;
cantrun=0;
canthit=0;
