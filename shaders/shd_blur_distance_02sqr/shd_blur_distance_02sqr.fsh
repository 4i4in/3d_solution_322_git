varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float dgw;
uniform float dgh;

uniform sampler2D surf_color;
uniform sampler2D surf_color_2;
uniform sampler2D surf_color_4;
uniform sampler2D surf_color_8;
uniform sampler2D surf_depth;

uniform float _check_distance_limit;

void main()
{
	vec4 _base_color = texture2D( surf_color, v_vTexcoord );
	vec4 _base_color_2 = texture2D( surf_color_2, v_vTexcoord );
	vec4 _base_color_4 = texture2D( surf_color_4, v_vTexcoord );
	vec4 _base_color_8 = texture2D( surf_color_8, v_vTexcoord );
	
	vec4 _depth_color = texture2D( surf_depth, v_vTexcoord );
	
	float _my_dist_to_cam = _depth_color.r;
	
	vec4 _new_color = _base_color;
	float _mixlvl = 0.;
	if (_my_dist_to_cam - _check_distance_limit > 0.)
		{
			_new_color = _base_color_2;
			
			if (_my_dist_to_cam - _check_distance_limit > _check_distance_limit)
				{
					_new_color = _base_color_4;
					
					if (_my_dist_to_cam - _check_distance_limit > 2.*_check_distance_limit)
						{
							_new_color = _base_color_8;
						}
				}
		}
	gl_FragColor = vec4(_new_color.r,_new_color.g,_new_color.b,1.);

}
