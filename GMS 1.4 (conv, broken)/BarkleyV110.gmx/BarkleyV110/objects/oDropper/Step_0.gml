cou+=global.rd;
if (cou>rdr) {
xr=48;
cou=0;
rdr=100+random(100);
if (instance_number(oDroplet)<5) instance_create(8+x-(xr/2)+random(xr),(8+y-(xr/2)+random(xr))-32,oDroplet);
}

