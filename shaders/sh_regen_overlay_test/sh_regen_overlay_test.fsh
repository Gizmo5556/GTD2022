//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
	vec4 col = vec4(0.0, 1.0, 0.0, texColor.a);
	vec4 finalCol = mix(texColor, col, 0.5);
    gl_FragColor = v_vColour * finalCol;
} 