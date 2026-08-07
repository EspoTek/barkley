if (global.scheme[0]!=1) {
instance_destroy();
exit;
}
instance_create(0,0,oFlashback);
global.cinema=1;
alarm[0]=5;
