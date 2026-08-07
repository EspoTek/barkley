// deferred one step so oController's Game Start has finished seeding globals
sFileData(0);   // new-game init: seeds every global and warps to the start room

// Randomise the party rather than just maxing HP: a level-1 Barkley knowing one
// skill exercises almost none of the battle code. Levels are applied through the
// game's own sBattleLevel/sBattleSkill so stats and skill lists stay internally
// consistent -- writing the stat arrays directly would invent states no real
// playthrough can reach, and then every battle crash is a suspect finding.
// All five characters, not just the current roster: qa_state reshuffles the
// battle party on every room entry, so anyone can turn up in a fight and needs
// stats that a real playthrough could have produced.
try {
	for (var c = 0; c <= 4; c += 1) {
		var want = 1 + irandom(59);
		// attacks mode wants every level-up skill known and full stat pools, so
		// the sweep exercises each attack rather than whatever a random level
		// happens to have taught. Still applied through sBattleLevel so the
		// stats are ones a real max-level playthrough produces.
		if (mode = "attacks") want = 60;
		while (global.char_res1[c] < want) {
			global.char_res1[c] += 1;
			var sk = sBattleLevel(c, global.char_res1[c]);
			if (sk != "") sBattleSkill(c, sk);
		}
		global.char_chp[c] = global.char_hp[c];
		global.char_czp[c] = global.char_zp[c];
		show_debug_message("AUTOQA PARTY " + string(global.char_name[c])
			+ " lvl=" + string(global.char_res1[c]) + " hp=" + string(global.char_hp[c]));
	}
} catch (_ex) {
	show_debug_message("AUTOQA PARTY_FAIL " + string(_ex.message)
		+ " :: at " + string(_ex.script) + " line " + string(_ex.line));
}

// attacks mode: grant every battle skill refSkill defines for each character,
// through sBattleSkill so the game's own dedup and eskill layout apply. Levels
// cover most of these already; the rest are granted in real play by items and
// story beats (Snail Zauber from oZauber, Chaff Grenade from oJenkins, the
// initial sInitChar sets). The names must match refSkill exactly -- a typo here
// would dispatch event 0 silently, since refSkill leaves c_event untouched for
// unknown names.
if (mode = "attacks") {
	var _grant = [
		[0, "Doubleteam"], [0, "Showboat Jam"], [0, "Holy Dunk"], [0, "Vampslam"], [0, "Ghost Muscle"],
		[1, "Ice Zauber"], [1, "Wind Zauber"], [1, "Flame Zauber"], [1, "Water Zauber"],
		[1, "Snail Zauber"], [1, "Thunder Zauber"], [1, "Muscle Zauber"],
		[2, "Refractor Beam"],
		[3, "Dwarven Touch"], [3, "Insulin Shot"], [3, "Dwarf Knowledge"],
		[3, "Glaucoma Prayer"], [3, "Dwarf Caress"], [3, "Chaff Grenade"],
		[4, "Gun's Slay"], [4, "TrickGun Assualt"], [4, "Bulletdance"], [4, "Status Shot"]
	];
	var _g;
	for (_g = 0; _g < array_length(_grant); _g += 1) {
		sBattleSkill(_grant[_g][0], _grant[_g][1]);
	}
	// Battle-usable items, by the game's own refItem tBattle flag.
	var _n = array_length(qa_itemnames);
	var _i;
	for (_i = 0; _i < _n; _i += 1) {
		refItem(qa_itemnames[_i]);
		if (global.tBattle = 1) array_push(qa_battleitems, qa_itemnames[_i]);
	}
	show_debug_message("AUTOQA ATTACKS battleitems=" + string(array_length(qa_battleitems)));
}

// Built here, not in Create: oController's Game Start creates this object before
// it loads the key bindings, so global.key_* does not exist yet at that point.
keys  = [global.key_up, global.key_down, global.key_left, global.key_right,
         global.key_action, global.key_cancel, global.key_start];
nkeys = array_length(keys);
// Clockwise, so "turn" is +/-1 and "reverse" is +2 -- see the walk in Step.
mdirs = [global.key_up, global.key_right, global.key_down, global.key_left];

// Globals that only a specific entry flow ever assigns. Warping straight into
// the rooms that read them would otherwise raise unset-variable errors that no
// player can hit. Seed them to a sensible value so the sweep can cover those
// rooms; anything that still crashes afterwards is a genuine finding.
if (!variable_global_exists("romname"))    global.romname    = "QA";   // set by sFileData(4)
if (!variable_global_exists("diemessage")) global.diemessage = "";     // set on death

// sFileData(0) clears global.following, so a warped-in room has no follower
// instances -- and cutscenes address their speaker by object index (oCinema's
// `com.face`), which raises "Unable to find instance for object index" the
// moment a queued line belongs to a party member. In real play the follower is
// on screen because the story added it. qa_state recruits all five the game ever
// adds, so the union of reachable follower states is present; oBarkley's Create
// calls sFollow("update") on every room entry, which materialises them. It also
// seeds global.bene, because RomInter is not somewhere you walk into -- it is
// built by sBattleStart from the encounter's ene[] list.
qa_world();  // roll story position, language mode, equipment and text speed
qa_items();   // randomise the bag before the first room, so item code is live from the start
qa_state();

started = true;
phase   = 1;
