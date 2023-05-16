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
    
    float gray = 0.299 * texColor.r + 0.587 * texColor.g + 0.114 * texColor.b;
    vec3 grayscaleColor = vec3(gray, gray, gray);
    
    FragColor = vec4(grayscaleColor, texColor.a);
}
