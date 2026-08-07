//
// Aperture-grille CRT in the spirit of RetroArch's crt-easymode/aperture:
// sharp-bilinear sampling, brightness-dependent beam (bright rows fill their
// line, dark rows show the gap -- the thing that makes easymode look "right"
// instead of a flat sine overlay), RGB triad grille over device pixels, and
// a small brightness boost to pay for the mask.  Flat screen, no motion.
//
precision highp float;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2  u_native; // source resolution (320,240)
uniform float u_sharp;  // output pixels per source pixel
uniform float u_scan;   // scanline depth before beam dynamics
uniform float u_mask;   // grille strength 0..~0.35
uniform float u_boost;  // brightness compensation

void main()
{
    vec2 px = v_vTexcoord * u_native;
    vec2 base = floor(px - 0.5) + 0.5;
    vec2 f = px - base;
    vec2 t = clamp((f - 0.5) * u_sharp + 0.5, 0.0, 1.0);
    vec3 col = texture2D(gm_BaseTexture, (base + t) / u_native).rgb;

    // dynamic beam width: dark pixels get the full scanline dip, bright ones
    // bloom and close the gap
    float luma = dot(col, vec3(0.299, 0.587, 0.114));
    float dip = u_scan * (1.0 - 0.55 * luma);
    float beam = 0.5 + 0.5 * cos(6.28318 * (fract(px.y) - 0.5));
    col *= 1.0 - dip + dip * beam;

    // RGB aperture grille over device pixels
    float m = mod(gl_FragCoord.x, 3.0);
    vec3 grille;
    if (m < 1.0)      grille = vec3(1.0, 1.0 - u_mask, 1.0 - u_mask);
    else if (m < 2.0) grille = vec3(1.0 - u_mask, 1.0, 1.0 - u_mask);
    else              grille = vec3(1.0 - u_mask, 1.0 - u_mask, 1.0);
    col *= grille;

    col *= u_boost;

    gl_FragColor = vec4(col, 1.0) * v_vColour;
}
