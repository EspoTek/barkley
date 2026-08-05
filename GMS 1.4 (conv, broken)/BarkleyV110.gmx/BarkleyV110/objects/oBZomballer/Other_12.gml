if (exec!=-1) { 
if (_bp>=10) {
sound_volume(mZomballer0,0);
_bp-=10; jump=1; cou=0; exit; 
} else {
doing=floor(random(2)); event_user(doing); exit;
}
}
alarm[0]=30;
