//Port fix: oIntro1 is created 5th in RomNeoYork0 but oBarkley is 6th and oPump
//20th, so these two writes at Create time hit objects with no instances. GM6
//ignored that; GameMaker 2024 makes it fatal. They only need to be in place
//before alarm[0] starts the street montage a step later, so Room Start -- which
//runs once every instance exists -- is the right home. oBum0 is created before
//oIntro1 and stays in Create.
with (oPump) visible=0;
with (oBarkley) visible=0;
