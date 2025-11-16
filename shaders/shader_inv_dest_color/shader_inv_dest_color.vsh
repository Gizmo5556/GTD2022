attribute vec3 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vDestinationTexcoord;  //texcoord of vertex relative to destination texture
uniform vec2 texel_size; // x = 1 / width of destination texture, y = 1 / height of destination texture
void main() {
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4( in_Position, 1.0);
    v_vDestinationTexcoord = in_Position.xy * texel_size;
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}