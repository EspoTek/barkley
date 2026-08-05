if (exec!=-1) { mov=exec; doing=exec; exec=-1;  event_user(13); }
if (mov!=-999) {
event_user(mov);
} else event_user(12);
