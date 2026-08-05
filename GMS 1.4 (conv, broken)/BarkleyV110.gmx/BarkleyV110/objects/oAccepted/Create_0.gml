type=global.doosh;
image_yscale=0;
image_xscale=0;
go=0;
alarm[0]=150;
alarm[1]=350;
x=__view_get( e__VW.XView, 0 )+25;
y=__view_get( e__VW.YView, 0 )+210;
for (i=0; i<12; i+=1) {
lll=instance_create(x+(i*25),y,oChar);
lll.image_index=i; lll.image_speed=0;
lll.alarm[0]=10+(i*10)
lll.alarm[1]=230+(i*10);
}
sA("stopall");
sA("play",mQuest);
