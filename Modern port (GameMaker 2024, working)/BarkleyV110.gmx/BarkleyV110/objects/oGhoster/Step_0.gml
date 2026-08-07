cou+=global.rd;
image_alpha=abs(1-((1/life)*cou));
if (cou>=life) instance_destroy();
