if (__background_get( e__BG.Index, 1 )!=-1) {
ggg=background_get_name(__background_get( e__BG.Index, 1 ));
x=__background_get( e__BG.X, 1 );
y=__background_get( e__BG.Y, 1 );
visible=__background_get( e__BG.Visible, 1 ); 
sprite_index=sBGLookup(ggg);
hspeed=__background_get( e__BG.HSpeed, 1 );
vspeed=__background_get( e__BG.VSpeed, 1 );
}
