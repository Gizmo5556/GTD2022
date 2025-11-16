varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform sampler2D tex_back;
uniform vec4 tex_transform;



vec2 surf_coords(vec2 T) { return (T * tex_transform.xy + tex_transform.zw); }

void main( void )
{
	vec3 mask = texture2D( gm_BaseTexture, v_vTexcoord ).rgb;
    gl_FragColor = vec4( texture2D( tex_back, surf_coords(v_vTexcoord) ).rgb * mask, 1.0 );

}