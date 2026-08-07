//
// Clean CRT for the 320x240 game surface, in the spirit of RetroArch's
// crt-easymode: sharp-bilinear pixel reconstruction, low-contrast beam
// scanlines, faint vignette.  Flat screen -- no curvature, no fringing,
// no mask, no motion.  Serves two presets via uniforms:
//   Subtle: u_pitch=1 (one beam per source line, console-style)
//   VGA:    u_pitch=2 (double-scanned fine lines, like the PC monitors
//           this 2008 game actually shipped on -- cf. DOSBox Staging)
//
precision highp float;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2  u_native; // source resolution (320,240)
uniform float u_sharp;  // output pixels per source pixel (transition steepness)
uniform float u_scan;   // scanline depth, 0..0.25 (0 disables)
uniform float u_pitch;  // beam lines per source line (1 or 2)
uniform float u_vig;    // vignette: darkening at corners = u_vig/2

void main()
{
    // sharp-bilinear: confine bilinear filtering to a ~1-output-pixel band at
    // each texel edge -- reads as crisp as nearest, but pixel edges stay
    // smooth at fractional scales instead of shimmering
    vec2 px = v_vTexcoord * u_native;
    vec2 base = floor(px - 0.5) + 0.5;
    vec2 f = px - base;
    vec2 t = clamp((f - 0.5) * u_sharp + 0.5, 0.0, 1.0);
    vec3 col = texture2D(gm_BaseTexture, (base + t) / u_native).rgb;

    // scanlines: a soft beam per line, dimming between lines, with a small
    // lift so overall brightness is unchanged
    float beam = 0.5 + 0.5 * cos(6.28318 * (fract(px.y * u_pitch) - 0.5));
    col *= (1.0 - u_scan + u_scan * beam) * (1.0 + 0.5 * u_scan);

    // vignette
    vec2 d = v_vTexcoord - 0.5;
    col *= 1.0 - u_vig * dot(d, d);

    gl_FragColor = vec4(col, 1.0) * v_vColour;
}
