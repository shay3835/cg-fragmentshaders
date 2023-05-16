#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    // Color
    vec4 texColor = texture(image, model_uv);
    
    float rr = texColor.r;
    float gg = texColor.g;
    float bb = texColor.b;

    float rrr = 1.0 - (abs((1.0-rr)-0.5) + 0.5);
    float ggg = 1.0 - (abs((1.0-gg)-0.5) + 0.5);
    float bbb = 1.0 - (abs((1.0-bb)-0.5) + 0.5);

    vec3 oilColor = vec3(rrr, ggg, bbb);
    FragColor = vec4(oilColor, texColor.a);
}
