// CineStill 800T-inspired halation for the Phoenix CvEffect pass.
// The sensor image is decoded approximately to linear light, bright transmitted
// energy is diffused at three radii, and the reflected component is biased toward
// the red-sensitive emulsion layers. 4:3 pixel aspect is compensated in UV space.
vec3 centerLinear = pow(max(color.rgb, vec3(0.0)), vec3(2.2));
float centerY = dot(centerLinear, vec3(0.2126, 0.7152, 0.0722));
float centerHot = clamp((centerY - 0.48) / 0.52, 0.0, 1.0);
centerHot = centerHot * centerHot * (3.0 - 2.0 * centerHot);

vec3 scattered = vec3(0.0);
float weight = 0.0;
vec2 px = vec2(0.75, 1.0);

// Tight reflection close to the highlight boundary.
vec2 r = px * 0.0044;
vec3 s = pow(max(INPUT(uv + vec2( r.x, 0.0)).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.045; weight += 0.045;
s = pow(max(INPUT(uv + vec2(-r.x, 0.0)).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.045; weight += 0.045;
s = pow(max(INPUT(uv + vec2(0.0,  r.y)).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.045; weight += 0.045;
s = pow(max(INPUT(uv + vec2(0.0, -r.y)).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.045; weight += 0.045;
s = pow(max(INPUT(uv + vec2( r.x,  r.y) * 0.7071).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.045; weight += 0.045;
s = pow(max(INPUT(uv + vec2(-r.x,  r.y) * 0.7071).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.045; weight += 0.045;
s = pow(max(INPUT(uv + vec2( r.x, -r.y) * 0.7071).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.045; weight += 0.045;
s = pow(max(INPUT(uv + vec2(-r.x, -r.y) * 0.7071).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.045; weight += 0.045;

// Broader substrate reflection. Axial and diagonal taps approximate a circular PSF.
r = px * 0.0115;
s = pow(max(INPUT(uv + vec2( r.x, 0.0)).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.052; weight += 0.052;
s = pow(max(INPUT(uv + vec2(-r.x, 0.0)).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.052; weight += 0.052;
s = pow(max(INPUT(uv + vec2(0.0,  r.y)).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.052; weight += 0.052;
s = pow(max(INPUT(uv + vec2(0.0, -r.y)).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.052; weight += 0.052;
s = pow(max(INPUT(uv + vec2( r.x,  r.y) * 0.7071).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.052; weight += 0.052;
s = pow(max(INPUT(uv + vec2(-r.x,  r.y) * 0.7071).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.052; weight += 0.052;
s = pow(max(INPUT(uv + vec2( r.x, -r.y) * 0.7071).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.052; weight += 0.052;
s = pow(max(INPUT(uv + vec2(-r.x, -r.y) * 0.7071).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.052; weight += 0.052;

// Low-energy red tail from longer-distance scattering.
r = px * 0.0250;
s = pow(max(INPUT(uv + vec2( r.x, 0.0)).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.028; weight += 0.028;
s = pow(max(INPUT(uv + vec2(-r.x, 0.0)).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.028; weight += 0.028;
s = pow(max(INPUT(uv + vec2(0.0,  r.y)).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.028; weight += 0.028;
s = pow(max(INPUT(uv + vec2(0.0, -r.y)).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.028; weight += 0.028;
s = pow(max(INPUT(uv + vec2( r.x,  r.y) * 0.7071).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.028; weight += 0.028;
s = pow(max(INPUT(uv + vec2(-r.x,  r.y) * 0.7071).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.028; weight += 0.028;
s = pow(max(INPUT(uv + vec2( r.x, -r.y) * 0.7071).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.028; weight += 0.028;
s = pow(max(INPUT(uv + vec2(-r.x, -r.y) * 0.7071).rgb, vec3(0.0)), vec3(2.2));
scattered += vec3(smoothstep(0.48, 1.0, dot(s, vec3(0.2126, 0.7152, 0.0722)))) * 0.028; weight += 0.028;

float blurredHot = clamp(scattered.r / max(weight, 0.0001), 0.0, 1.0);

// Remove the source core: halation is the reflected skirt surrounding it.
float halo = max(blurredHot - centerHot * 0.72, 0.0);
vec3 reflectedSpectrum = vec3(1.0, 0.255, 0.055);
vec3 outLinear = centerLinear + reflectedSpectrum * halo * (0.34 * darkStrength);
outLinear = max(outLinear, vec3(0.0));
return vec4(pow(min(outLinear, vec3(1.0)), vec3(1.0 / 2.2)), color.a);
