varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelH;
uniform float pixelW;

vec3 hsv2rgb(vec3 c) 
{
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

void main()
{
    vec2 OffsetX;
    OffsetX.x = pixelW;
    vec2 OffsetY;
    OffsetY.y = pixelH;
	
	vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
	
	float ini_alpha = texColor.a;
	float alpha = ini_alpha;
  
    alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + OffsetX).a);
    alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - OffsetX).a);
    alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + OffsetY).a);
    alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - OffsetY).a);
	
	//if alpha is >= 4.0, make it 0.0
	alpha = 1.0 - step(4.0, alpha);
	
	vec3 hsv_color = hsv2rgb(vec3(0.8, 0.5, 0.75));
	
	//vec4 final_color = vec4(hsv2rgb(hsv_color), texColor.a);
	
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor.a = alpha;
	gl_FragColor.rgb = mix(gl_FragColor.rgb, hsv_color, float(ini_alpha==0.0));
  
    //gl_FragColor = color * texture2D( gm_BaseTexture, v_vTexcoord );
    //gl_FragColor.a = alpha;
	//gl_FragColor = final_color;
}