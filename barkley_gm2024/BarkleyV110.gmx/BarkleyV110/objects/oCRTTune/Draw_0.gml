// backdrop: same navy as the options-menu panels so filter changes read well
draw_set_alpha(1);
draw_set_color(make_color_rgb(24, 24, 88));
draw_rectangle(0, 0, 319, 239, false);
sFont(Courier8, c_yellow, 1);
draw_text(160, 4, string_hash_to_newline("TUNE CRT FILTER"));

// parameter list, left column; greys out while the Dosbox filter is off
var i, yy, val, col;
for (i = 0; i < nrows; i += 1) {
	yy = 22 + i * 15;
	col = c_white;
	if (i >= 1 && i <= 7 && global.sat[6] != 2) col = c_gray;
	if (i = cur) draw_sprite(sDialogBlip, tick div 4, 8, yy + 4); //spinning basketball cursor
	sFont(Courier8, col, 0);
	draw_text(17, yy, string_hash_to_newline(rname[i]));
	val = "";
	if (i = 0) val = global.crtname[global.sat[6]];
	if (i >= 1 && i <= 7) val = string(global.sat[6 + i]);
	if (val != "") { sFont(Courier8, col, 2); draw_text(130, yy, string_hash_to_newline(val)); sFont(Courier8, col, 0); }
}
sFont(Courier8, c_gray, 1);
draw_text(160, 228, string_hash_to_newline("Arrows adjust   X or EXIT leaves"));

// --- sample content, right side, judged through the live filter ---
// portraits
draw_sprite(sFacebox, 0, 146, 22);
draw_sprite(sFaces, 1, 146, 22);
draw_sprite(sFacebox, 0, 202, 22);
draw_sprite(sFaces, 4, 202, 22);
draw_sprite(sFacebox, 0, 258, 22);
draw_sprite(sFaces, 9, 258, 22);

// colour bars + grayscale ramp (mask/scanline/grain judges)
var bx, bw;
bw = 22;
bx = 146;
draw_set_color(c_white);   draw_rectangle(bx, 84, bx + bw - 1, 104, false); bx += bw;
draw_set_color(c_yellow);  draw_rectangle(bx, 84, bx + bw - 1, 104, false); bx += bw;
draw_set_color(c_aqua);    draw_rectangle(bx, 84, bx + bw - 1, 104, false); bx += bw;
draw_set_color(c_lime);    draw_rectangle(bx, 84, bx + bw - 1, 104, false); bx += bw;
draw_set_color(c_fuchsia); draw_rectangle(bx, 84, bx + bw - 1, 104, false); bx += bw;
draw_set_color(c_red);     draw_rectangle(bx, 84, bx + bw - 1, 104, false); bx += bw;
draw_set_color(c_blue);    draw_rectangle(bx, 84, bx + bw - 1, 104, false); bx += bw;
for (i = 0; i < 8; i += 1) {
	draw_set_color(make_color_rgb(i * 36, i * 36, i * 36));
	draw_rectangle(146 + i * 19, 108, 146 + i * 19 + 18, 122, false);
}

// motion probes: spinning balls sweeping the bars (ghosting judge)
var mx;
mx = 146 + abs((tick * 3) mod 300 - 150);
draw_sprite(sDialogBlip, (tick div 3) mod 12, mx, 130);
mx = 146 + abs((tick * 6 + 100) mod 300 - 150);
draw_sprite(sDialogBlip, (tick div 2) mod 12, mx, 144);

// dialogue mockup (text legibility judge)
draw_set_color(make_color_rgb(24, 24, 96));
draw_rectangle(4, 168, 315, 218, false);
draw_set_color(make_color_rgb(140, 110, 60));
draw_rectangle(4, 168, 315, 218, true);
draw_rectangle(5, 169, 314, 217, true);
draw_sprite(sFacebox, 0, 10, 172);
draw_sprite(sFaces, 1, 10, 172);
sFont(Courier8, c_white, 0);
draw_text(64, 174, string_hash_to_newline("BARKLEY: Even now the neo-arcades"));
draw_text(64, 186, string_hash_to_newline("hum with ghosts of the great"));
draw_text(64, 198, string_hash_to_newline("cyberpocalypse. 0123456789 iIlL1"));
