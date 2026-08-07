//
// Faithful GLSL ES port of Mattias Gustavsson's dosbox-crt shader
// (github.com/mattiasgustavsson/dosbox-crt, src/gui/crtemu.h), minus the
// bezel frame texture.  The things that make it complex-but-subtle, kept
// verbatim: only 20% of the barrel curve is applied (mix 0.8 to flat),
// quarter-strength chromatic offsets, static 0.18-amplitude scanlines,
// a 3px shadow mask at 0.23, ghosting from a blurred accumulation buffer
// at 5%, filmic tonemapping, film grain and a 0.4% flicker.  Their
// dosbox-specific texcoord remapping and BGR/flip swizzles are dropped;
// u_blurbuf is the ghost accumulation surface oDisplay maintains.
//
precision highp float;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_time;    // seconds, wraps every 100s
uniform vec2  u_outsize; // destination rect size in gui pixels
uniform sampler2D u_blurbuf;

vec3 tsample(sampler2D samp, vec2 tc)
{
    vec3 s = pow(abs(texture2D(samp, tc).rgb), vec3(2.2));
    return s * vec3(1.25);
}

vec3 filmic(vec3 LinearColor)
{
    vec3 x = max(vec3(0.0), LinearColor - vec3(0.004));
    return (x * (6.2 * x + 0.5)) / (x * (6.2 * x + 1.7) + 0.06);
}

vec2 curve(vec2 uv)
{
    uv = (uv - 0.5) * 2.0;
    uv *= 1.1;
    uv.x *= 1.0 + pow(abs(uv.y) / 5.0, 2.0);
    uv.y *= 1.0 + pow(abs(uv.x) / 4.0, 2.0);
    uv = uv / 2.0 + 0.5;
    uv = uv * 0.92 + 0.04;
    return uv;
}

float rand(vec2 co)
{
    return fract(sin(dot(co.xy, vec2(12.9898, 78.233))) * 43758.5453);
}

void main()
{
    vec2 uv = v_vTexcoord;
    // only 20% of the curve -- the dosbox-crt signature restraint
    vec2 curved_uv = mix(curve(uv), uv, 0.8);
    float scale = 0.04;
    vec2 scuv = curved_uv * (1.0 - scale) + scale / 2.0 + vec2(0.003, -0.001);

    // main colour + bleed
    vec3 col;
    float x = sin(0.1 * u_time + curved_uv.y * 13.0)
            * sin(0.23 * u_time + curved_uv.y * 19.0)
            * sin(0.3 + 0.11 * u_time + curved_uv.y * 23.0) * 0.0012;
    float o = sin(gl_FragCoord.y * 1.5) / u_outsize.x;
    x += o * 0.25;
    x *= 0.2;
    col.r = tsample(gm_BaseTexture, vec2(x + scuv.x + 0.0009 * 0.25, scuv.y + 0.0009 * 0.25)).r + 0.02;
    col.g = tsample(gm_BaseTexture, vec2(x + scuv.x + 0.0000 * 0.25, scuv.y - 0.0011 * 0.25)).g + 0.02;
    col.b = tsample(gm_BaseTexture, vec2(x + scuv.x - 0.0015 * 0.25, scuv.y + 0.0000 * 0.25)).b + 0.02;
    float i = clamp(col.r * 0.299 + col.g * 0.587 + col.b * 0.114, 0.0, 1.0);
    i = pow(1.0 - pow(i, 2.0), 1.0);
    i = (1.0 - i) * 0.85 + 0.15;

    // ghosting from the blurred accumulation buffer
    float ghs = 0.05;
    vec3 r = tsample(u_blurbuf, vec2(x - 0.014, -0.027) * 0.45
        + 0.007 * vec2(0.35 * sin(1.0 / 7.0 + 15.0 * curved_uv.y + 0.9 * u_time),
                       0.35 * sin(2.0 / 7.0 + 10.0 * curved_uv.y + 1.37 * u_time))
        + vec2(scuv.x + 0.001, scuv.y + 0.001)) * vec3(0.5, 0.25, 0.25);
    vec3 g = tsample(u_blurbuf, vec2(x - 0.019, -0.020) * 0.45
        + 0.007 * vec2(0.35 * cos(1.0 / 9.0 + 15.0 * curved_uv.y + 0.5 * u_time),
                       0.35 * sin(2.0 / 9.0 + 10.0 * curved_uv.y + 1.50 * u_time))
        + vec2(scuv.x + 0.000, scuv.y - 0.002)) * vec3(0.25, 0.5, 0.25);
    vec3 b = tsample(u_blurbuf, vec2(x - 0.017, -0.003) * 0.35
        + 0.007 * vec2(0.35 * sin(2.0 / 3.0 + 15.0 * curved_uv.y + 0.7 * u_time),
                       0.35 * cos(2.0 / 3.0 + 10.0 * curved_uv.y + 1.63 * u_time))
        + vec2(scuv.x - 0.002, scuv.y + 0.000)) * vec3(0.25, 0.25, 0.5);
    col += vec3(ghs * (1.0 - 0.299)) * pow(clamp(vec3(3.0) * r, vec3(0.0), vec3(1.0)), vec3(2.0)) * vec3(i);
    col += vec3(ghs * (1.0 - 0.587)) * pow(clamp(vec3(3.0) * g, vec3(0.0), vec3(1.0)), vec3(2.0)) * vec3(i);
    col += vec3(ghs * (1.0 - 0.114)) * pow(clamp(vec3(3.0) * b, vec3(0.0), vec3(1.0)), vec3(2.0)) * vec3(i);

    // level adjustment (curves)
    col *= vec3(0.95, 1.05, 0.95);
    col = clamp(col * 1.3 + 0.75 * col * col + 1.25 * col * col * col * col * col, vec3(0.0), vec3(10.0));

    // vignette
    float vig = 0.1 + 16.0 * curved_uv.x * curved_uv.y * (1.0 - curved_uv.x) * (1.0 - curved_uv.y);
    vig = 1.3 * pow(vig, 0.5);
    col *= vig;

    // scanlines (static, output-relative like dosbox-crt)
    float scans = clamp(0.35 + 0.18 * sin(curved_uv.y * u_outsize.y * 1.5), 0.0, 1.0);
    float s = pow(scans, 0.9);
    col = col * vec3(s);

    // shadow mask
    col *= 1.0 - 0.23 * clamp(mod(gl_FragCoord.x, 3.0) / 2.0, 0.0, 1.0);

    // tone map
    col = filmic(col);

    // film grain
    vec2 seed = curved_uv * u_outsize;
    col -= 0.015 * pow(vec3(rand(seed + u_time), rand(seed + u_time * 2.0), rand(seed + u_time * 3.0)), vec3(1.5));

    // flicker
    col *= 1.0 - 0.004 * (sin(50.0 * u_time + curved_uv.y * 2.0) * 0.5 + 0.5);

    // outside the tube
    if (curved_uv.x < 0.0 || curved_uv.x > 1.0) col *= 0.0;
    if (curved_uv.y < 0.0 || curved_uv.y > 1.0) col *= 0.0;

    // soft outer falloff (dosbox-crt applies this even without the bezel)
    float fvig = clamp(512.0 * uv.x * uv.y * (1.0 - uv.x) * (1.0 - uv.y), 0.2, 0.85);
    col *= fvig;

    gl_FragColor = vec4(col, 1.0) * v_vColour;
}
