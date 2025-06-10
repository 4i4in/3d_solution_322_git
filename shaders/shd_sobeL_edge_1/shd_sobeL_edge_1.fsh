varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float dgw;
uniform float dgh;

uniform sampler2D surf_light;
uniform sampler2D surf_material;
uniform sampler2D surf_decoded_color;
uniform sampler2D surf_decoded_normal;
uniform sampler2D surf_decoded_simple_normal;
uniform sampler2D surf_depth;
uniform sampler2D surf_xyz;
uniform sampler2D surf_croshatch;


uniform float _check_distance_limit;
uniform float _treshold_dist1;
uniform float _line_thicknes_max;

uniform float _filter_1;
uniform float _filter_2;
uniform float _filter_3;

//functions
vec3 fromNormalColor(vec3 color)
	{
		return ((color - 0.5) * 2.);
	}
vec4 check_material_color(vec4 color, float material)
	{
		if (material == 7.)	{color = vec4(0.,0.,0.,1.);};
		if (material == 10.)	{color = vec4(0.,0.,0.,1.);};
		if (material == 100.)	{color = vec4(0.,0.,0.,1.);};
		return (color);
	}	
void main()
{
	float _my_material = texture2D( surf_material, v_vTexcoord ).g;
	if (_my_material > 99.)		{discard;};//ignored
	//if (_my_material > 99.)	{ float _line_thicknes_max = 1.;};
	
	vec3 _base_color = texture2D( surf_decoded_color, v_vTexcoord ).xyz;
	
	vec3 _nsmaple = texture2D( surf_decoded_normal, v_vTexcoord ).xyz;
	vec3 _my_sample_normal =  fromNormalColor(_nsmaple);
	
	_nsmaple = texture2D( surf_decoded_simple_normal, v_vTexcoord ).xyz;
	vec3 _my_sample_normal_simple =  fromNormalColor(_nsmaple);
	
	
	vec4 _my_xyz = texture2D( surf_xyz, v_vTexcoord );
	
	vec4 _depth_color = texture2D( surf_depth, v_vTexcoord );
	float _my_dist_to_cam = _depth_color.r;	float _my_hash = _depth_color.g;
	float _my_light = texture2D( surf_light, v_vTexcoord ).b;
	
	if (_my_hash == -20.)	//biome combined 
		{
			if (_my_dist_to_cam > _check_distance_limit * 0.25)	{discard;};
		};
	
	float _line_tmax = clamp(_line_thicknes_max,0.,7.);
	
	float _valid_px1 = 0.;	//normal simple
	float _valid_px2 = 0.;	//distance
	float _valid_px3 = 0.;	//darker
	float _valid_px4 = 0.;	//darker red
	
	float _check_range = _check_distance_limit / _my_dist_to_cam;
	_check_range = clamp(_check_range,1.,_line_tmax);
	_check_range = clamp(_check_range,1.,7.);
	for(float _x = -_check_range; _x < _check_range + 1.; _x += 1.)
		{
			for(float _y = -_check_range; _y < _check_range + 1.; _y += 1.)
				{
					vec2 _check_texcoord = vec2(v_vTexcoord.x + _x * dgw, v_vTexcoord.y + _y * dgh);
					float _check_material = texture2D( surf_material, _check_texcoord ).g;
					if (_check_material < 100.)
						{		
							vec4 _check_depth_color = texture2D( surf_depth, _check_texcoord );
							float _check_dist = _check_depth_color.r;
							float _check_light = texture2D( surf_light, _check_texcoord ).b;
					
					
							//add from normal difference
							vec3 _check_normal = texture2D( surf_decoded_normal, _check_texcoord ).xyz;
							_check_normal = fromNormalColor(_check_normal);
							
							vec3 _check_normal_simple = texture2D( surf_decoded_simple_normal, _check_texcoord ).xyz;
							_check_normal_simple = fromNormalColor(_check_normal_simple);
							
							float _dotN = (-dot(_my_sample_normal_simple,_check_normal_simple) +1.)*0.5;
					
							_valid_px1 += _dotN;
					
							//add distance fifference
							float _dist_diff = abs(_my_dist_to_cam - _check_dist);
							if  (_dist_diff > _treshold_dist1)
								{
									_valid_px2 += _dist_diff/_treshold_dist1;
								}
							float _ldiff = _my_light - _check_light;
							if (_ldiff < -_filter_3)
								{
									_valid_px3 += abs(_ldiff);
								}
							vec3 _check_hatch_color = texture2D( surf_croshatch, _check_texcoord ).xyz;
							if ((_check_hatch_color.r > _check_hatch_color.g) && (_check_hatch_color.r > _check_hatch_color.b))
								{
									_valid_px4 += abs(_ldiff);
								}
						}
				}
		}
	

	if ( _valid_px1 > _filter_1)
		{
			vec4 result_color = vec4(0.,0.,0.,1.);
			gl_FragColor = check_material_color(result_color,_my_material);
		}	
	if ( _valid_px2 > 1.)
		{
			vec4 result_color = vec4(0.,0.,0.,1.);
			gl_FragColor = check_material_color(result_color,_my_material);
		}	
		
	vec3 _cross_hatch_color = texture2D( surf_croshatch, v_vTexcoord ).xyz;
	if (( _valid_px4 > _filter_2)	&&	(_cross_hatch_color.r > _cross_hatch_color.g) && (_cross_hatch_color.r > _cross_hatch_color.b))
		{
			vec4 result_color =	vec4(mix(_base_color,vec3(0.,0.,0.),1.-_my_light),1.);
			gl_FragColor = check_material_color(result_color,_my_material);
		}
	if (_valid_px3 > _filter_2)
		{
			if (_cross_hatch_color.r + _cross_hatch_color.g + _cross_hatch_color.b < _my_light)
				{
					if (_my_light > 0.75)
						{
							vec4 result_color = vec4(0.,0.,0.,1.);
							if ((_base_color.r > _base_color.g)	&&	(_base_color.r > _base_color.b))
								{	result_color =	vec4(mix(_base_color,vec3(.9,.25,.25),1.-_my_light),1.);}
							else if ((_base_color.g > _base_color.r)	&&	(_base_color.g > _base_color.b))
								{	result_color =	vec4(mix(_base_color,vec3(.25,.9,.25),1.-_my_light),1.);}
							else if ((_base_color.b > _base_color.r)	&&	(_base_color.b > _base_color.g))
								{	result_color =	vec4(mix(_base_color,vec3(.25,.25,.9),1.-_my_light),1.);}
							else	{	result_color =	vec4(mix(_base_color,vec3(.9,.9,.9),1.-_my_light),1.);};
							gl_FragColor = check_material_color(result_color,_my_material);
						}
					else if (_my_light > 0.5)
						{
							vec4 result_color = vec4(0.,0.,0.,1.);
							if ((_base_color.r > _base_color.g)	&&	(_base_color.r > _base_color.b))
								{	result_color =	vec4(mix(_base_color,vec3(.9,.25,.25),_my_light*0.5),1.);}
							else if ((_base_color.g > _base_color.r)	&&	(_base_color.g > _base_color.b))
								{	result_color =	vec4(mix(_base_color,vec3(.25,.9,.25),_my_light*0.5),1.);}
							else if ((_base_color.b > _base_color.r)	&&	(_base_color.b > _base_color.g))
								{	result_color =	vec4(mix(_base_color,vec3(.25,.25,.9),_my_light*0.5),1.);}
							else	{	result_color =	vec4(mix(_base_color,vec3(.25,.25,.25),_my_light*0.5),1.);};
							gl_FragColor = check_material_color(result_color,_my_material);
						}
					else
						{
							vec4 result_color = vec4(0.,0.,0.,1.);
							gl_FragColor = check_material_color(result_color,_my_material);
						}
				}
		}	
}
