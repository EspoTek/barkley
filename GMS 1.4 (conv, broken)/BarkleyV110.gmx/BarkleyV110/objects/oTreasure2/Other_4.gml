// Port: GM6 ran an instance's room-editor creation code BEFORE its Create
// event; GameMaker 2024 runs it AFTER (verified: a variable set there does not
// exist yet in Create). `val` comes from the creation code, so reading it in
// Create raised "not set before reading it". Room Start runs after the
// creation code, so the value is there. These objects are room-placed only,
// so Room Start always fires for them.
sTreasure(val,1);
