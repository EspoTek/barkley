//
global.dialog=1;
if (sOvar(object_index,-1)=1) {
type=5;
sCinema(oBarkley,"dialog","Current quest: The Ghost Dad.",0,"Cancel Quest","Exit");
sCinema(oBarkley,"code",cine_0464);
} else {
sound_restore(mQuest);
type=0;
sCinema(oBarkley,"dialog","Current monster quests available:",0,"The Ghost Dad","Exit");
sCinema(oBarkley,"code",cine_0464);
}
