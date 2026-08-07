if (__background_get( e__BG.Index, 0 )!=-1 && __background_get( e__BG.Index, 0 )!=background86) {
ggg=background_get_name(__background_get( e__BG.Index, 0 ));
x=__background_get( e__BG.X, 0 );
y=__background_get( e__BG.Y, 0 );
visible=__background_get( e__BG.Visible, 0 ); 
sprite_index=sBGLookup(ggg);
hspeed=__background_get( e__BG.HSpeed, 0 );
vspeed=__background_get( e__BG.VSpeed, 0 );
}
