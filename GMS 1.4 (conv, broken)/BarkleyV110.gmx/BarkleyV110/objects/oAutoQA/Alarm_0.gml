// deferred one step so oController's Game Start has finished seeding globals
sFileData(0);   // new-game init: seeds every global and warps to the start room

// Randomise the party rather than just maxing HP: a level-1 Barkley knowing one
// skill exercises almost none of the battle code. Levels are applied through the
// game's own sBattleLevel/sBattleSkill so stats and skill lists stay internally
// consistent -- writing the stat arrays directly would invent states no real
// playthrough can reach, and then every battle crash is a suspect finding.
try {
	for (var pidx = 0; global.party[pidx] != -1; pidx += 1) {
		var c    = global.party[pidx];
		var want = 1 + irandom(59);
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

// Built here, not in Create: oController's Game Start creates this object before
// it loads the key bindings, so global.key_* does not exist yet at that point.
keys  = [global.key_up, global.key_down, global.key_left, global.key_right,
         global.key_action, global.key_cancel, global.key_start];
nkeys = array_length(keys);

// Globals that only a specific entry flow ever assigns. Warping straight into
// the rooms that read them would otherwise raise unset-variable errors that no
// player can hit. Seed them to a sensible value so the sweep can cover those
// rooms; anything that still crashes afterwards is a genuine finding.
if (!variable_global_exists("romname"))    global.romname    = "QA";   // set by sFileData(4)
if (!variable_global_exists("diemessage")) global.diemessage = "";     // set on death

started = true;
phase   = 1;
