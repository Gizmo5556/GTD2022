//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float iTime; 

float scale(float value, float inMin, float inMax, float outMin, float outMax) {
    return (value - inMin) * (outMax - outMin) / (inMax - inMin) + outMin;
}

float zigzag(float time, float period) {
	return 2.0 * abs(time/period - floor(time/period + 0.5));
}

void main()
{
	
	vec4 shine_color = vec4(1.0, 1.0, 1.0, 0.3);
	float shine_speed = 0.5;
	float shine_progress = zigzag(iTime * shine_speed, -8.0);
	float shine_size = 0.01;
	float shine_angle = 45.0;
	
	float slope = tan(radians(shine_angle));	
	float progress = scale(shine_progress, 0.0, 1.0, -1.0 - shine_size - shine_size * slope, 1.0 * slope);
	
	vec4 color = texture2D(gm_BaseTexture, v_vTexcoord);
	float shine = step(slope * v_vTexcoord.x - v_vTexcoord.y, progress + shine_size + shine_size * slope) - step(slope * v_vTexcoord.x - v_vTexcoord.y, progress);
	gl_FragColor = mix(color, vec4(shine_color.rgb, 1.0), shine * shine_color.a * color.a);
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}
