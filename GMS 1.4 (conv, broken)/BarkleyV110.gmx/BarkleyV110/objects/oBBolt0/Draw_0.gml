if (view_current!=0) exit;
if (cou>2) { instance_destroy(); exit; }
cou+=1;
sElectric(x,y,tx,ty,8,pr_linestrip,merge_color(c_yellow,c_white,.2+random(.3)),c_yellow,20,10,0.1);
