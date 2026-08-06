instance_destroy();
with (oBCamera) {
//port: global.turn holds an instance id, and the battler whose turn it is can be
//gone by the time this attack-finisher fires -- it dies to a counter, or the
//battle ends mid-animation.  GM6 ignored the missing-instance error and carried
//straight on to the next statement; GameMaker 2024 raises and kills the battle.
//sEnemyAI guards this same global the same way, so the flow already expects it.
staller=0;
if (instance_exists(global.turn)) global.turn.finish=2;
alarm[1]=1;
with (oBattleMenu) alarm[0]=1;
}
