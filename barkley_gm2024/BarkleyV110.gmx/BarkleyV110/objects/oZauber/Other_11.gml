global.dialog=1;
sOvar(oSnail,9);
instance_destroy();
sCinema(oBarkley,"dialog","What's this?",1);
sCinema(oBalthios,"dialog","A zauber... the snail must have dropped it as he retired to his lovenest with J. Lindsay.",1);
sCinema(oBarkley,"tint",c_yellow,1);
sCinema(oBarkley,"wait",0.5);
sCinema(oBarkley,"tint",c_yellow,0);
sCinema(oBalthios,"dialog","The zauber surges with the power of snails...",1);
sCinema(oBarkley,"item","Snail Zauber",1);
sBattleSkill(1,"Snail Zauber");
sCinema(oBarkley,"dialog","Balthios learned \"Snail Zauber!\"");

