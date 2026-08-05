function key_ress(argument0, argument1) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0;
	cv=0;
	repeat (4) {
	 if (argument0=ar[cv] || argument1=ar[cv]) { 
	  if (but[cv]=0) {
	   but[cv]=1;
	   if (keyboard_check(ar[cv])=0) keyboard_key_press(ar[cv]); 
	  } else {
	   if (but[cv]>=twe) {
	    but[cv]+=1*(global.rendt*3);
	    if (but[cv]>twe+(deltime/2)) { but[cv]=twe; keyboard_key_press(ar[cv]); }
	   } else {
	    if (keyboard_check(ar[cv])=1 && but[cv]=1) keyboard_key_press(ar[cv]);
	    else but[cv]+=1*(global.rendt*3);
	    if (but[cv]>deltime) { but[cv]=twe; keyboard_key_press(ar[cv]); }
	   }
	  }
	 } else { 
	  but[cv]=0;
	  if (keyboard_check(ar[cv])=1) keyboard_key_release(ar[cv]); 
	 }
	 cv+=1;
	}


}
