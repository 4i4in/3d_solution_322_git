varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float dgw;
uniform float dgh;

uniform sampler2D surf_color;
uniform sampler2D surf_depth;

uniform float _check_distance_limit;
uniform float _treshold_dist1;
uniform float _max_blur_range;


void main()
{
	vec4 _base_color = texture2D( surf_color, v_vTexcoord );
	
	vec4 _depth_color = texture2D( surf_depth, v_vTexcoord );
	
	float _my_dist_to_cam = _depth_color.r;	float _my_hash = _depth_color.g;
	
	float _check_distance_limit_p = _check_distance_limit;
	if (_my_hash == -20.)	//biome combined 
		{_check_distance_limit_p *= 0.8;};
	
	float _max_brange = clamp(_max_blur_range,0.,8.);
	float _check_range = _my_dist_to_cam / _check_distance_limit_p;
	_check_range = clamp(_check_range,0.,_max_brange);
	
	float _valid_px = 0.;
	vec4 _new_color = vec4(0.,0.,0.,0.);
	for(float _x = -_check_range; _x < _check_range + 1.; _x += 1.)
		{
			for(float _y = -_check_range; _y < _check_range + 1.; _y += 1.)
				{
					vec2 _check_texcoord = vec2(v_vTexcoord.x + _x * dgw, v_vTexcoord.y + _y * dgh);
					vec4 _check_depth_color = texture2D( surf_depth, _check_texcoord );
					float _check_dist = _check_depth_color.r;
					if (abs(_my_dist_to_cam - _check_dist) < _treshold_dist1)
						{
							_valid_px += 1.;
							vec4 _check_base_color = texture2D( surf_color, _check_texcoord );
											
							_new_color += _check_base_color;
						}
							
				}
		}
	_new_color /= _valid_px;
	_base_color = vec4(_new_color.r,_new_color.g,_new_color.b,1.);

	
    gl_FragColor = _base_color;
}
