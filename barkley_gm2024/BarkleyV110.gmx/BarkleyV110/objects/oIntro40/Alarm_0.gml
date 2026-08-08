// Port: oIntro40 is placed in BOTH RomSubway1 and RomNBAJam, and these alarms are
// gated only on the story counter, never on `room` -- so they fire in RomNBAJam,
// which places none of oBalthios/oCyberdwarf/oHoopz/oJuwanna (and RomSubway1 does
// not place object649x). Bare obj.var writes to an absent object are a hard error
// in GameMaker 2024; GM6 ignored them. Same `with` treatment as Alarm_5.
sOvar(object_index,1);
sCLevel(4);
global.skipper=20;
sItem("Turkey Feather",-1);
global.nofollow=1;
with (oFollower) x=-999;
with (oBalthios)   x=xstart-4;
with (oCyberdwarf) x=xstart-4;
with (oHoopz)      x=xstart-4;
with (oBarkley)    t=2;
with (oHoopz)      t=3;
with (oCyberdwarf) t=1;
with (oBalthios)   t=0;
sCinema(oBarkley,"code",cine_0074);
sCinema(oBarkley,"cond",cine_0148);
sCinema(oBarkley,"dialog","Hoopz, I've known you were a special kid for a long time.",1);
sCinema(oHoopz,"dialog","What do you mean, dad? I'm just a normal kid. I'm no different from any of my friends.",1);
sCinema(oBarkley,"dialog","There's... something I never told you.",1);
sCinema(oHoopz,"dialog","Huh? What do you mean?",1);
sCinema(oBarkley,"dialog","Maureen... your mother... we were so excited to finally have a child. We were trying so hard for so many years and it never seemed to work. You should've seen the look on her face when she went into labor. I've never seen a woman so happy before. I'd never been so happy before... She was in labor for thirty-six hours. We knew you'd be a tough one coming out but... we never expected this.",1);
sCinema(oHoopz,"dialog","What do you mean dad?",1);
sCinema(oBarkley,"dialog","She... your mother gave birth to a b-ball. It wasn't a b-ball, it was an egg but it looked just like one. We didn't know what to do and the doctor said he'd never seen anything like this before. It was another three months before you hatched, Hoopz.",1);
sCinema(oHoopz,"dialog","But... what does it mean?",1);
sCinema(oBarkley,"dialog","I don't know but... but that's not the end...",1);
sCinema(oBarkley,"effect","fadein",3);
global.roz=RomNBAJam;
global.trm=0;
global.tdm=0;
