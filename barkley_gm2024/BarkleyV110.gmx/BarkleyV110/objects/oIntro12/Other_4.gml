//Port fix, same trap as oIntro9: the Create event clears the gate Suits once
//Allard's event is done, but oSuitToll is placed after oIntro12 in this room's
//instance creation order (24th vs 45th), so at Create time he did not exist and
//`with (oSuitToll)` matched nothing -- the toll collector stayed at the gateway
//for the rest of the game. oSuit0/oSuit1 are placed earlier, which is why only
//the toll Suit survived. Repeat just that destroy at Room Start, when every
//instance exists. Reads oAllard's store only, so it stays idempotent no matter
//how the Create branch went.
if (sOvar(oAllard,-1)!=-1) {
with (oSuitToll) instance_destroy();
}
