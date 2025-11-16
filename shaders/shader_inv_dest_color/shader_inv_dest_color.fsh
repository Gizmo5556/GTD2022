varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vDestinationTexcoord;
uniform sampler2D destination; //destination (probably application surface) texture
void main() {
    vec4 dest_color = texture2D( destination, v_vDestinationTexcoord ); //color of destination at fragment position
    vec4 source_color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );  //color of source at fragment position
    gl_FragColor = vec4( 1.0 - dest_color.rgb, source_color.a );
}