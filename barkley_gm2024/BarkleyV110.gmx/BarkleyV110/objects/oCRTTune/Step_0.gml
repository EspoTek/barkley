tick += 1;
if (sKey(global.key_up,1) || sKey(vk_up,1)) { sP(); cur = (cur + nrows - 1) mod nrows; }
if (sKey(global.key_down,1) || sKey(vk_down,1)) { sP(); cur = (cur + 1) mod nrows; }
var d = 0;
if (sKey(global.key_left,1) || sKey(vk_left,1)) d = -1;
if (sKey(global.key_right,1) || sKey(vk_right,1)) d = 1;
if (d != 0) { sP();
if (cur = 0) global.sat[6] = min(2, max(0, global.sat[6] + d));
if (cur >= 1 && cur <= 7) global.sat[6 + cur] = min(25, max(0, global.sat[6 + cur] + d));
sConfig(1);
}
if (sKey(global.key_action,1) || sKey(vk_enter,1)) { sP(1);
if (cur = 8) { // restore the default look (the user-tuned 2026-08-07 values)
global.sat[7] = 10; global.sat[8] = 10; global.sat[9] = 10;
global.sat[10] = 20; global.sat[11] = 15; global.sat[12] = 10; global.sat[13] = 10;
sConfig(1);
}
if (cur = 9) { sConfig(1); instance_destroy(); exit; }
}
if (sKey(global.key_cancel,1)) { sP(-1); sConfig(1); instance_destroy(); exit; }
