if (instance_exists(global.camera)) sViewFollow(global.camera);
if (global.roomer!=-1) {
//port: the only unguarded oBarkley read in this event -- the lines either side of
//it both test instance_exists first.  global.roomer marks a room transition still
//pending, and that can be true in a room with no oBarkley: trigger an encounter
//on the same step you step into an exit and the battle room loads with the
//transition outstanding.  GM6 ignored the missing instance, left global.lookdir at
//its previous value and ran on; GameMaker 2024 raises.
if (instance_exists(oBarkley)) global.lookdir=oBarkley.t;
global.freeze=1;
sTrans("fadein",2);
}
if (instance_exists(oBarkley)) sTimePass();
//view_xview[0]=max(-1,view_xview[0]-1);
//view_yview[0]=max(-1,view_yview[0]-1);

