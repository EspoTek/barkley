
if (dir=0) {
image_xscale=min(1,image_xscale+.1);
image_yscale=image_xscale;
} else {
image_xscale=max(0,image_xscale-.1);
image_yscale=image_xscale;
}
x=master.x;
y=master.y+28;
depth=master.depth+1;

