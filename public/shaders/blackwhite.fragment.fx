#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;


// Output
out vec4 FragColor;

void main() {

    vec4 color = texture(image, model_uv);
    
    float gray = 0.299 * color.r + 0.587 * color.g + 0.114 * color.b;
    vec3 blackWhite = vec3(gray, gray, gray);
    
    FragColor = vec4(blackWhite, color.a);
}
