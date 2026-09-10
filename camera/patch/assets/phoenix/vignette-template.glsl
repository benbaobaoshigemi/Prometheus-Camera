precision highp float;
varying vec2 tc;
uniform sampler2D tex;
uniform float CurrentTime, NoiseStrength, DarkStrength, SmoothStartValue, SmoothEndValue, Falloff;
#define PREFIX(x) x
#define INPUT(x) texture2D(tex,x)
precision highp float; float PREFIX_FUNC_nrand( vec2 n ) { return fract(sin(dot(n.xy, vec2(12.9898, 78.233)))* 43758.5453); } float PREFIX_FUNC_n6rand(vec2 n){ float currentTime = PREFIX(CurrentTime); float t = currentTime * (30.0/60.0)/100.0; float nrnd0 = PREFIX_FUNC_nrand( n + 0.07*t ); float nrnd1 = PREFIX_FUNC_nrand( n + 0.11*t ); float nrnd2 = PREFIX_FUNC_nrand( n + 0.13*t ); float nrnd3 = PREFIX_FUNC_nrand( n + 0.17*t ); float nrnd4 = PREFIX_FUNC_nrand( n + 0.19*t ); float nrnd5 = PREFIX_FUNC_nrand( n + 0.23*t ); return (nrnd0+nrnd1+nrnd2+nrnd3+nrnd4+nrnd5) / 6.0; } float PREFIX_FUNC_lum(vec4 color) { return color.x * 0.299 + color.y *0.114 + color.z * 0.587; } vec4 PREFIX_FUNC_colorNoise(vec4 color, vec2 tc, float noiseStrength) { float its = PREFIX_FUNC_n6rand(tc); its = its * 2.0; vec3 noise = vec3(its*color.r, its*color.g, its*color.b); float brightness = PREFIX_FUNC_lum(color); noiseStrength = noiseStrength * (1.0 - brightness); noiseStrength = step(0.0, noiseStrength) * noiseStrength; vec3 withNoise = mix(color.rgb, noise, noiseStrength); vec3 withVig = mix(withNoise, withNoise, noiseStrength); return vec4(withVig, 1.0); } vec4 PREFIX_FUNC_colorDark(vec4 color, vec2 uv, float darkStrength) {
/*PHOENIX_BODY*/
} vec4 FUNCNAME(vec2 tc) { vec2 uv = tc; vec4 color = INPUT(uv); float noiseStrength = PREFIX(NoiseStrength); if (noiseStrength > 0.0) { color = PREFIX_FUNC_colorNoise(color, uv, noiseStrength); } float darkStrength = PREFIX(DarkStrength); if (darkStrength > 0.0) { color = PREFIX_FUNC_colorDark(color, uv, darkStrength); } return color; } 

void main() { gl_FragColor = FUNCNAME(tc); }
