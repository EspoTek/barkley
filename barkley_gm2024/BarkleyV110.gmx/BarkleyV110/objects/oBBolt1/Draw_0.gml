if (view_current!=0) exit;
if (cou>20) { instance_destroy(); exit; }
cou+=1;
repeat (10) {
lir=random(360);
lis=20+random(20);
sElectric(x,y,x+lengthdir_x(lis,lir),y+lengthdir_y(lis,lir),8,pr_linestrip,merge_color(c_yellow,c_white,.2+random(.3)),c_yellow,20,10,0.1);
}
