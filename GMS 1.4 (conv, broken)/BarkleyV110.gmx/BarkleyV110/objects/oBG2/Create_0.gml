if (__background_get( e__BG.Index, 2 )!=-1) {
ggg=background_get_name(__background_get( e__BG.Index, 2 ));
x=__background_get( e__BG.X, 2 );
y=__background_get( e__BG.Y, 2 ); 
visible=__background_get( e__BG.Visible, 2 ); 
sprite_index=sBGLookup(ggg);
hspeed=__background_get( e__BG.HSpeed, 2 );
vspeed=__background_get( e__BG.VSpeed, 2 );
}
