//Port fix: oHoopzdummy is created after oIntro25 in RomSubwayCar0, so hiding him
//from Create wrote to an object with no instances -- ignored by GM6, fatal in
//GameMaker 2024. Room Start runs once every instance exists.
if (room=RomSubwayCar0) {
with (oHoopzdummy) visible=0;
}
