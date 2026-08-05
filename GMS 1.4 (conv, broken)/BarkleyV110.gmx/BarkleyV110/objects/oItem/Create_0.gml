if (string_count("oExit",object_get_name(object_index))!=0) {
jjj=object_get_name(object_index);
jjj=string_replace(jjj,"oExit","");
if (real(jjj)<200) mystart=asset_get_index("oStart"+jjj);
}
desc="Nothing...";
depth=-(y+sprite_height);
solid=1;
movement=0; //higher means moves more
cog=0; //count
domove=-1;
indialog=0;
