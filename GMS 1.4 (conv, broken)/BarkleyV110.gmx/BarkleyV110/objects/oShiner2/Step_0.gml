cou+=global.rd;
if (cou>rdr) {
xr=32;
cou=0;
rdr=50+random(100);
if (instance_number(oShiner3)<5) {
if (x>__view_get( e__VW.XView, 0 ) && x<__view_get( e__VW.XView, 0 )+320 && y>__view_get( e__VW.YView, 0 ) && y<__view_get( e__VW.YView, 0 )+240) instance_create(8+x-(xr/2)+random(xr),(8+y-(xr/2)+random(xr)),oShiner3);
}
}

