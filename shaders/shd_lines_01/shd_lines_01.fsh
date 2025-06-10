varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float dgw;
uniform float dgh;

//uniform sampler2D surf_color;
//uniform sampler2D surf_normals;
uniform sampler2D surf_depth;
//uniform sampler2D surf_xyz;

uniform float _mark_hash;
uniform float _mark_part;
uniform float _check_distance_limit;

uniform float _line_thicknes_max;


//functions

void main()
{
	//vec4 _sample_color = texture2D( surf_color, v_vTexcoord );
	//vec3 _base3_color =		vec3(decodeColor(_sample_color.r));
	//vec4 _my_xyz = texture2D( surf_xyz, v_vTexcoord );
	
	//vec4 _base_color = vec4(_base3_color.r,_base3_color.g,_base3_color.b,1.);
	
	vec4 _depth_color = texture2D( surf_depth, v_vTexcoord );
	float _my_dist_to_cam = _depth_color.r;	float _my_hash = _depth_color.g;	float _my_part = _depth_color.b;
	
	float _line_tmax = clamp(_line_thicknes_max,0.,7.);
	float _hash_pixel = 0.;
	float _part_pixel = 0.;
	float _check_range = _check_distance_limit / _my_dist_to_cam;
	_check_range = clamp(_check_range,1.,_line_tmax);
	_check_range = clamp(_check_range,1.,7.);
	for(float _x = -_check_range; _x < _check_range + 1.; _x += 1.)
		{
			for(float _y = -_check_range; _y < _check_range + 1.; _y += 1.)
				{
					vec2 _check_texcoord = vec2(v_vTexcoord.x + _x * dgw, v_vTexcoord.y + _y * dgh);
					vec4 _check_depth_color = texture2D( surf_depth, _check_texcoord );
					
					float _check_hash = _check_depth_color.g;
					float _check_part = _check_depth_color.b;
					
					if ((_my_hash != _mark_hash)	&& (_check_hash == _mark_hash))
						{
							_hash_pixel +=1.;
						}
					if ((_my_part != _mark_part)	&& (_check_part == _mark_part)	&& (_check_hash == _mark_hash))
						{
							_part_pixel +=1.;
						}
				}
		}
	if	(_hash_pixel > 0. &&	_part_pixel < 1.)				{gl_FragColor = vec4(0.,0.,1.,1.);}
	else if	(_part_pixel > 0. )									{gl_FragColor = vec4(1.,0.51,0.,1.);}
    
}
