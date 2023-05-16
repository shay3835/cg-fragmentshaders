#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    vec4 texColor = texture(image, model_uv);
    
    float rr = texColor.r;
    float gg = texColor.g;
    float bb = texColor.b;

    float rrr = floor(rr*4.0+0.5)/4.0;
    float ggg = floor(gg*4.0+0.5)/4.0;
    float bbb = floor(bb*4.0+0.5)/4.0;
    vec3 toonColor = vec3(rrr, ggg, bbb);
    
    FragColor = vec4(toonColor, texColor.a);
}
