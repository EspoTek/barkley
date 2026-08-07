// Port: `group`, `moves` and `ene[]` all come from this instance's room-editor
// creation code (sGroup("c1") and friends). GM6 ran that before the Create
// event; GameMaker 2024 runs it after, so Create saw them unset -- sEGroup then
// spun forever on `for (i=0; ene[i]!=""; i+=1)` over an array that did not
// exist, wedging the game on room entry with no error to show for it.
// Room Start runs after the creation code, so the values are there.
sEGroup(group);
sDelimit(moves);
