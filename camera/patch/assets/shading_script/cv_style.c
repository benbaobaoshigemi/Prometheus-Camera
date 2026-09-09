#version 310 es
precision mediump float;

//参数介绍
uniform sampler2D text_source;
uniform float blockCount; //分块总数
uniform float blockOffset; //偏移量(当前属于第几块偏移量)
uniform float darkStrength;
in vec2 vTexCoord;
out vec4 outColor;


vec3 colorDark(vec3 color, vec2 uv) {
    // TEMP_BEACON: actual capture dark-node execution returns white.
    return vec3(1.0);
    vec3 factor = vec3(0.2125, 0.7154, 0.0721);
    float Y = dot(color, factor);
    float count = blockCount;
    float offset = blockOffset;
    uv.x = (uv.x - 0.5) * 0.75 + 0.5;
    //拍照做分块处理
    if (blockCount > 0.0) {
        uv.y = uv.y / count + offset / count;
    }
    float dist = distance(uv, vec2(0.5,0.5));
    float pow = 1.0 / pow(100.0, (1.0 - Y));
    return (color * (1.0 - pow) * smoothstep(1.4, 0.2, dist) + color * pow);
}

vec4 processColor(vec2 uv) {
    //获取输入像素
    vec3 color = texture(text_source, uv, 0.0).rgb;
    //处理暗角
    color = mix(color, colorDark(color, uv), clamp(darkStrength, 0.0, 1.0));
    return vec4(color, 1.0);
}

void main() {
    vec4 finalColor = processColor(vTexCoord);
    outColor = finalColor;
}
