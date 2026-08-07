global.b_lowx=999;
oBWind2.intensity-=2.5;
with (oBattler) global.b_lowx=min(x,global.b_lowx);
if (oBWind1.x<global.b_lowx && hurt=0) {
hurt=1;
with (oBBalthios) sSkillDmg("wind1");
}
