//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 u_texel;

void main()
{
    vec4 col = v_vColour;
    col.a *= texture2D( gm_BaseTexture, v_vTexcoord ).a;
    
    float u = texture2D( gm_BaseTexture, v_vTexcoord - vec2(0., u_texel.y)).a;
    float d = texture2D( gm_BaseTexture, v_vTexcoord + vec2(0., u_texel.y)).a;
    float l = texture2D( gm_BaseTexture, v_vTexcoord - vec2(u_texel.x, 0.)).a;
    float r = texture2D( gm_BaseTexture, v_vTexcoord + vec2(u_texel.x, 0.)).a;
    
    col.a *= 1. - (u*d*l*r);
    
    gl_FragColor = col;
}