#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;
uniform float time;

// Output
out vec4 FragColor;

void main() {
    vec2 uv1 = model_uv * 2.0 - 1.0;
    float rad = length(uv1);
    //vec2 uv2 = uv1 * (sin(rad * 30.0 - time * 5.0) + 0.5) / 60.0;
    vec2 uv2 = uv1 * (sin(rad * 30.0 - time * 10.0) * 0.05);
    vec2 ripple_uv = model_uv + uv2;
    FragColor = texture(image, ripple_uv);
}
