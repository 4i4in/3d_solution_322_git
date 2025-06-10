varying vec2 v_vTexcoord;

uniform sampler2D surf_color;

void main()
{
	vec4 _base_color = texture2D( surf_color, v_vTexcoord );
	
    gl_FragColor = _base_color;
}
