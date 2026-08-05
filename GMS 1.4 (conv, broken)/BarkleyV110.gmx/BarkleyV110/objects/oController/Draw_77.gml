// Post Draw (port): composite the native 320x240 frame onto the window.
// Nearest-neighbour for chunky pixels; aspect ratio always kept; integer scaling
// (global.integer_scale) gives pixel-perfect uniform pixels with black borders.
var _sw = 320, _sh = 240;
var _ww = window_get_width(), _wh = window_get_height();
if (_ww <= 0) _ww = _sw;
if (_wh <= 0) _wh = _sh;
var _s = min(_ww/_sw, _wh/_sh);
if (global.integer_scale) _s = max(1, floor(_s));
var _dw = _sw*_s, _dh = _sh*_s;
var _dx = (_ww-_dw)*0.5, _dy = (_wh-_dh)*0.5;
draw_clear(c_black);
gpu_set_tex_filter(false);
if (surface_exists(application_surface))
	draw_surface_stretched(application_surface, _dx, _dy, _dw, _dh);
