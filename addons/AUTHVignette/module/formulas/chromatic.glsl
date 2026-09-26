// OEM chromaticAberration; blur controls strength.
int sampleCount = 10;
float blur = 0.1;
float falloff = 3.0;
vec2 direction = normalize(uv - 0.5);
vec2 velocity = direction * blur * pow(length(uv - 0.5), falloff);
float inverseSampleCount = 1.0 / float(sampleCount);
mat3 increments = mat3(velocity * 1.0 * inverseSampleCount,1.0, velocity * 2.0 * inverseSampleCount,1.0, velocity * 4.0 * inverseSampleCount,1.0);
vec3 accumulator = vec3(0.0);
mat3 offsets = mat3(0.0);
for (int i = 0;
i < sampleCount;
i++) {
accumulator.r += INPUT(uv + offsets[0].xy).r;
accumulator.g += INPUT(uv + offsets[1].xy).g;
accumulator.b += INPUT(uv + offsets[2].xy).b;
offsets -= increments;
} return vec4(color.rgb + accumulator / float(sampleCount) - INPUT(uv).rgb, color.a);
