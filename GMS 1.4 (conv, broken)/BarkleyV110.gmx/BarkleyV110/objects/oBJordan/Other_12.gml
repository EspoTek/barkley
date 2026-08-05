//Swift Bolt Plus
global.descriptor="Swift Bolt Plus";
global.b_obj=global.b_middle;
if (exec!=-1) { 
if (_bp<2) { event_user(floor(random(2))); exit; }
_bp-=2;
fff=1; exec=-1; stage=0; wdoing=2; walk=slav; walkdist=-50; exit; 
}
if (stage=0) {
img=7;
if (fff>19) { fff=1; stage=1; bol=instance_create(target.x,target.y-200,oBBolt0); bol.depth=target.depth-1; bol.tx=target.x; bol.ty=target.y; sDamage(doing); }
} else if (stage=1) {
img=8;
if (fff>19) { img=1; stage=0; doing=-1; }
}
if (fff!=0) fff+=1;
exit;
