if (instance_exists(id)=0) exit;
global.tempx=x;
global.tempy=y;
global.tcou=1;
n=0;
while (n!=global.tcou) {
n=global.tcou;
with (oWall) {
if (sprite_index=sWall) {
if (x=global.tempx+(16*global.tcou) && y=global.tempy) {
if (global.tcou<4) {
global.tcou+=1;
instance_destroy();
}
}
}
}

}
if (global.tcou=1) {

n=0;
while (n!=global.tcou) {
n=global.tcou;
with (oWall) {
if (sprite_index=sWall) {
if (x=global.tempx && y=global.tempy+(16*global.tcou)) {
if (global.tcou<4) {
global.tcou+=1;
instance_destroy();
}
}
}
}

}

} else {
if (global.tcou=2) sprite_index=sWallH2;
if (global.tcou=3) sprite_index=sWallH3;
if (global.tcou=4) sprite_index=sWallH4;
exit;
}
if (global.tcou=2) sprite_index=sWallV2;
if (global.tcou=3) sprite_index=sWallV3;
if (global.tcou=4) sprite_index=sWallV4;

