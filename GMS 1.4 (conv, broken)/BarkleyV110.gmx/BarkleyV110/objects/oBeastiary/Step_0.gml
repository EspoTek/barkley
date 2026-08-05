if (sKey(global.key_up,1)) {
sP();
pos=max(0,pos-1);
}
if (sKey(global.key_down,1)) {
sP();
pos=min(pmx,pos+1);
}
if (sKey(global.key_action,1)) {
if (pos=pmx) { sP(1); instance_destroy(); }
else { sP(-1); }
}
