if (global.cour[cid]>0) {
image_index=cid; image_speed=0;
global.tamp=id; with (oMaze0) { if (cid=global.tamp.cid) { image_index=cid; image_speed=0; } }
global.cour[cid]-=global.rd;
if (global.cour[cid]<=0) {
sound_play(mOpen);
image_index=0; image_speed=0;
global.tamp=id;
with (oMaze0) if (cid=global.tamp.cid) { image_index=0; image_speed=0; }
}
}
