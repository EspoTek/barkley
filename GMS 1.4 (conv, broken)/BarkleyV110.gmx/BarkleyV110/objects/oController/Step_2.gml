if (instance_exists(global.camera)) sViewFollow(global.camera);
if (global.roomer!=-1) {
global.lookdir=oBarkley.t;
global.freeze=1;
sTrans("fadein",2);
}
if (instance_exists(oBarkley)) sTimePass();
//view_xview[0]=max(-1,view_xview[0]-1);
//view_yview[0]=max(-1,view_yview[0]-1);

