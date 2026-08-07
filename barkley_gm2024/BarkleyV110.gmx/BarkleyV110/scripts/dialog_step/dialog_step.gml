function dialog_step() {
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
	cmessage[line]=string_replace_all(cmessage[line],"\\","");
	cmessage[line]=string_replace_all(cmessage[line],"*","");
	//Realistic Voice Acting (port addition): bloop per revealed letter,
	//rate-limited by wall time so instant-reveal fires at most one
	if (global.sat[14]=1) {
	if (vres=0) { vres=1; vsnd=sVox(name); }
	if (vsnd>=0) {
	vch=string_upper(string_copy(dmessage[count],scount+lcount-1,1));
	if (vch!="") {
	vo=ord(vch);
	if ((vo>=65 && vo<=90) || (vo>=48 && vo<=57)) {
	if (current_time-vlast>55) {
	vlast=current_time;
	audio_play_sound(vsnd,10,false,0.85,0,0.94+random(0.12));
	}
	}
	}
	}
	}
	}
	}
	}
	if (sKey(global.key_action,1)) {
	 if (mdone=0) {
	 while (mdone=0) dialog_step();
	 mdone=0;
	 } else {
	  if (line>linemax) {
	   mdone=0;
	   cmessage[0]="";
	   cmessage[1]="";
	   cmessage[2]="";
	   cmessage[3]="";
	   cmessage[4]="";
	   line=0;
	   rrr=string_length(dmessage[count]);
	  } else {
	   if (option[0]="0" || grace>14) {
	    global.freeze=0;
	    instance_destroy();
	   }
	  }
	 }
	}


}
