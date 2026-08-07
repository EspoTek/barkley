// TUNE CRT FILTER screen (port addition). Overlays the boot settings room
// with sample content -- portraits, dialogue text, colour bars, motion --
// all rendered through whichever filter is live, plus a parameter list.
// Opened from the FILTER settings row; every change autosaves to config.txt.
depth = -1000;
cur = 0;
nrows = 10; // FILTER, WARP, SHADOW, VIGNETTE, SCANLINES, MASK, GRAIN, GHOST, DEFAULTS, EXIT
tick = 0;   // drives the motion probes
rname[0] = "FILTER";
rname[1] = "WARP";
rname[2] = "SHADOW";
rname[3] = "VIGNETTE";
rname[4] = "SCANLINES";
rname[5] = "MASK";
rname[6] = "GRAIN";
rname[7] = "GHOSTING";
rname[8] = "DEFAULTS";
rname[9] = "EXIT";
