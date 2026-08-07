draw_set_font(Courier8);
mcount+=global.rd*(1+global.sat[3]);
while (mcount>=wait) {
chat=!chat;
repeat(chunk) {
mcount-=wait;
if (wait!=global.textspeed) wait=global.textspeed;
if (scount+lcount=rrr+1 || line>linemax) mdone=1;
else {
lcount+=1;
dialog_check();
if (line>linemax) exit;
cmessage[line]=string_copy(dmessage[count],scount,lcount);
cmessage[line]=string_replace_all(cmessage[line],'\','');
cmessage[line]=string_replace_all(cmessage[line],'*','');
}
}
}
if (keyboard_check(global.key_action)) {
 keyboard_clear(global.key_action);
 if (mdone=0) {
 while (mdone=0) dialog_step();
 mdone=0;
 } else {
  if (line>linemax) {
   mdone=0;
   cmessage[0]='';
   cmessage[1]='';
   cmessage[2]='';
   cmessage[3]='';
   cmessage[4]='';
   line=0;
   rrr=string_length(dmessage[count]);
  } else {
   if (option[0]='0' || grace>14) {
    global.freeze=0;
    instance_destroy();
   }
  }
 }
}