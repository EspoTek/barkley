if (fly=1) {
if (x<0) instance_destroy();
gravity-=global.rd/40;
depth=-2000;
instance_create(x+12,y+16,oLRocket);
}
