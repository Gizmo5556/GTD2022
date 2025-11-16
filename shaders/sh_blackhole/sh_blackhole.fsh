varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec4 tex_transform;
uniform sampler2D tex_back;
uniform float iTime; 
//uniform float twist;


float selfSimilar(float r, float offset, float smear) {
    offset = mod(offset, 1.0);
    float r2 = mod(offset+log2(r)/smear, 1.0);
    return pow(abs(2.0), abs(r2-0.5));
}

mat2 rotation(float angle) {
    float s = sin(angle), c = cos(angle);
    return mat2(c, s, -s, c);
}

vec2 surf_coords(vec2 T) { return (T * tex_transform.xy + tex_transform.zw); }

void main( void )
{
	
    vec2 uv = surf_coords(v_vTexcoord);
    vec2 mid = vec2(0.5);

    float time = iTime * 0.5;

    vec2 dp = uv-mid;
    float r = length(dp);//*twist; // twist strength
    vec2 dir = dp/r;

    float r1 = selfSimilar(r, 0.5*time, 2.5);
    mat2 rot1 = rotation(0.2/r);
    vec4 col1 = vec4(texture2D(tex_back, mid+rot1*r1*dir));

    float r2 = selfSimilar(r, 1.3*time, 2.0);
    mat2 rot2 = rotation(iTime*0.2+0.2/r);
    vec4 col2 = vec4(texture2D(tex_back, mid-rot2*r2*dir));

	vec3 mask = texture2D(gm_BaseTexture, v_vTexcoord).rgb;
	
	vec4 final = mix(col1, col2, 0.5);

    gl_FragColor = vec4(final.xyz * mask, final.w);

}