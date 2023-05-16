#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {

    vec2 uv1 = model_uv * 2.0 - 1.0;
    float theta = atan(uv1.y, uv1.x);
    float rad = pow(length(uv1), 1.5);
    vec2 uv2 = vec2(rad * cos(theta), rad * sin(theta));
    vec2 fisheye_uv = 0.5 * (uv2 + 1.0);

    FragColor = texture(image, fisheye_uv);
}
