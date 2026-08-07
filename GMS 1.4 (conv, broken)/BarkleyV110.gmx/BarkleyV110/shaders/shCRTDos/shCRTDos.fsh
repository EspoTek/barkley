//
// DOSBox-Staging-style monitor emulation: a complex pipeline tuned for a
// subtle result, after johnnovak's adaptive CRT shaders.  What makes this
// family read as "a good monitor" rather than "an effect":
//   - all light math happens in linear light (gamma 2.2 in/out), so scanline
//     dips and halation blend the way phosphors do instead of crushing
//   - sharp-bilinear sampling: crisp pixels, no fractional-scale shimmer
//   - luma-dependent beam: bright rows fill their line, dark rows show gap
//   - halation: a touch of light bleeding around bright areas
//   - a faint RGB triad mask
// Flat screen, nothing moves, no colour fringing.
//
precision highp float;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2  u_native; // source resolution (320,240)
uniform float u_sharp;  // output pixels per source pixel
uniform float u_scan;   // scanline depth in linear light
uniform float u_pitch;  // beam lines per source line (2 = VGA double-scan)
uniform float u_halate; // halation strength 0..~0.25
uniform float u_mask;   // triad mask strength 0..~0.12

vec3 srgb2lin(vec3 c) { return pow(c, vec3(2.2)); }

void main()
{
    vec2 px = v_vTexcoord * u_native;
    vec2 base = floor(px - 0.5) + 0.5;
    vec2 f = px - base;
    vec2 t = clamp((f - 0.5) * u_sharp + 0.5, 0.0, 1.0);
    vec2 uv = (base + t) / u_native;
    vec3 col = srgb2lin(texture2D(gm_BaseTexture, uv).rgb);

    // halation: bright neighbours leak a little light in
    vec2 o = 1.5 / u_native;
    vec3 halo = srgb2lin(texture2D(gm_BaseTexture, uv + vec2(o.x, 0.0)).rgb)
              + srgb2lin(texture2D(gm_BaseTexture, uv - vec2(o.x, 0.0)).rgb)
              + srgb2lin(texture2D(gm_BaseTexture, uv + vec2(0.0, o.y)).rgb)
              + srgb2lin(texture2D(gm_BaseTexture, uv - vec2(0.0, o.y)).rgb);
    halo *= 0.25;
    col = mix(col, max(col, halo), u_halate);

    // scanlines in linear light, beam width tracking brightness
    float luma = dot(col, vec3(0.2126, 0.7152, 0.0722));
    float dip = u_scan * (1.0 - 0.6 * min(1.0, luma));
    float beam = 0.5 + 0.5 * cos(6.28318 * (fract(px.y * u_pitch) - 0.5));
    col *= 1.0 - dip + dip * beam;
    col *= 1.0 + 0.5 * dip; // hold perceived brightness

    // faint RGB triad over device pixels
    float m = mod(gl_FragCoord.x, 3.0);
    vec3 grille;
    if (m < 1.0)      grille = vec3(1.0, 1.0 - u_mask, 1.0 - u_mask);
    else if (m < 2.0) grille = vec3(1.0 - u_mask, 1.0, 1.0 - u_mask);
    else              grille = vec3(1.0 - u_mask, 1.0 - u_mask, 1.0);
    col *= grille;

    col = pow(clamp(col, 0.0, 1.0), vec3(1.0 / 2.2));
    gl_FragColor = vec4(col, 1.0) * v_vColour;
}
