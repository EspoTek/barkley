function sViewFollow(argument0) {
	var ax,ay
	if (argument0=0) { ax=x; ay=y; }
	else { ax=argument0.x; ay=argument0.y; }
	__view_set( e__VW.XView, 0, (ax+12)-global.we0 );
	__view_set( e__VW.YView, 0, (ay+16)-global.he0 );
	__view_set( e__VW.XView, 0, (__view_get( e__VW.XView, 0 )-(global.shake/2))+random(global.shake) );
	__view_set( e__VW.YView, 0, (__view_get( e__VW.YView, 0 )-(global.shake/2))+random(global.shake) );
	if (__view_get( e__VW.XView, 0 )<0) __view_set( e__VW.XView, 0, 0 );
	if (__view_get( e__VW.XView, 0 )+global.wid>room_width) __view_set( e__VW.XView, 0, room_width-global.wid );
	if (__view_get( e__VW.YView, 0 )<0) __view_set( e__VW.YView, 0, 0 );
	if (__view_get( e__VW.YView, 0 )+global.hei>room_height) __view_set( e__VW.YView, 0, room_height-global.hei );


}
