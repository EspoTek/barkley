oa=alp;
alp=mean((global.giger/5)-.05+random(.1),oa);
draw_sprite_ext(sParticles,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),1,1,0,c_white,alp);

