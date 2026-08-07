//
// Television-style CRT after Mattias Gustavsson's "newpixie"/crtview look:
// barrel curvature, chromatic aberration with soft glow taps, tone bend,
// vignette, scanlines (optionally crawling), vertical stripes and flicker.
// Everything dramatic is on a uniform so one program serves the TV SOFT,
// NEWPIXIE and GHOST presets; ghosting itself comes from the accumulation
// surface oDisplay maintains.
//
precision highp float;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_time;   // seconds, wraps every 100s
uniform vec2  u_native; // source resolution (320,240)
uniform float u_curve;  // 0 = gentle bow .. 1 = full mattias fishbowl
uniform float u_sdepth; // scanline modulation depth 0..1
uniform float u_sspeed; // scanline crawl speed, 0 = static
uniform float u_spitch; // scanline pitch in radians per source line
uniform float u_stripe; // vertical stripe strength
uniform float u_shim;   // horizontal shimmer amplitude
uniform float u_bright; // final brightness

vec2 curve(vec2 uv)
{
    uv = (uv - 0.5) * 2.0;
    uv *= mix(1.01, 1.1, u_curve);
    uv.x *= 1.0 + pow(abs(uv.y) / mix(9.0, 5.0, u_curve), 2.0);
    uv.y *= 1.0 + pow(abs(uv.x) / mix(8.0, 4.0, u_curve), 2.0);
    uv = uv / 2.0 + 0.5;
    uv = uv * mix(0.995, 0.92, u_curve) + mix(0.0025, 0.04, u_curve);
    return uv;
}

void main()
{
    vec2 uv = curve(v_vTexcoord);
    vec3 col;

    float x = sin(0.3 * u_time + uv.y * 21.0)
            * sin(0.7 * u_time + uv.y * 29.0)
            * sin(0.3 + 0.33 * u_time + uv.y * 31.0) * u_shim;

    // chromatic aberration + phosphor glow taps
    col.r = texture2D(gm_BaseTexture, vec2(x + uv.x + 0.001, uv.y + 0.001)).r + 0.05;
    col.g = texture2D(gm_BaseTexture, vec2(x + uv.x + 0.000, uv.y - 0.002)).g + 0.05;
    col.b = texture2D(gm_BaseTexture, vec2(x + uv.x - 0.002, uv.y + 0.000)).b + 0.05;
    col.r += 0.08 * texture2D(gm_BaseTexture, 0.75 * vec2(x + 0.025, -0.027) + vec2(uv.x + 0.001, uv.y + 0.001)).r;
    col.g += 0.05 * texture2D(gm_BaseTexture, 0.75 * vec2(x - 0.022, -0.020) + vec2(uv.x + 0.000, uv.y - 0.002)).g;
    col.b += 0.08 * texture2D(gm_BaseTexture, 0.75 * vec2(x - 0.020, -0.018) + vec2(uv.x - 0.002, uv.y + 0.000)).b;

    // tone bend + vignette + tint
    col = clamp(col * 0.6 + 0.4 * col * col, 0.0, 1.0);
    float vig = 16.0 * uv.x * uv.y * (1.0 - uv.x) * (1.0 - uv.y);
    col *= pow(vig, 0.3);
    col *= vec3(0.95, 1.05, 0.95);
    col *= u_bright;

    // scanlines
    float scans = 0.5 + 0.5 * sin(u_sspeed * u_time + uv.y * u_native.y * u_spitch);
    col *= (1.0 - u_sdepth) + u_sdepth * pow(scans, 1.5);

    // mains-hum flicker
    col *= 1.0 + 0.006 * sin(110.0 * u_time);

    // black outside the curved tube
    if (uv.x < 0.0 || uv.x > 1.0) col = vec3(0.0);
    if (uv.y < 0.0 || uv.y > 1.0) col = vec3(0.0);

    // vertical phosphor stripes in device pixels
    col *= 1.0 - u_stripe * clamp((mod(gl_FragCoord.x, 2.0) - 1.0) * 2.0, 0.0, 1.0);

    gl_FragColor = vec4(col, 1.0) * v_vColour;
}
