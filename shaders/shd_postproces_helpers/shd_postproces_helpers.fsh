varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float dgw;
uniform float dgh;

uniform float in_check_range;
uniform float _step_mul;

uniform float _func_highlite;

uniform sampler2D surf_helpers;
uniform sampler2D surf_postproces;

//functions
vec3 decodeColor(float encodedColor) 
	{
	    float colr256 = floor(encodedColor / 65536.);
		float colr65536 = colr256 * 65536.;
	    float colg256 = floor((encodedColor - colr65536) / 256.);
	    float colb256 = floor(encodedColor - colr65536 - colg256 * 256.);
	    return (vec3(colr256, colg256, colb256) / 255.);
	}
void main()
{
	vec4 _helper_color_sample = texture2D( surf_helpers, v_vTexcoord );
	vec3 _helper_col =		vec3(decodeColor(_helper_color_sample.r));
	_helper_col = clamp(_helper_col,vec3(0.),vec3(1.));
	
	float _h_func = _helper_color_sample.b;
	
	if (_helper_color_sample.a > 0.)
		{
			float _check_range = in_check_range;
			_check_range = clamp(_check_range,1.,4.);
			float _col_bpart = _check_range*2.+1.;	_col_bpart *= _col_bpart;	_col_bpart = 1./_col_bpart;
			float _cover_sum = 0.;
			//float _step_mul = 4.;
			for(float _x = -_check_range; _x < _check_range + 1.; _x += 1.)
				{
					for(float _y = -_check_range; _y < _check_range + 1.; _y += 1.)
						{
							vec2 _check_texcoord = vec2(v_vTexcoord.x + _x * _step_mul * dgw, v_vTexcoord.y + _y * _step_mul * dgh);
							vec4 _chc4 = texture2D( surf_helpers, _check_texcoord );
							if (_chc4.a > 0.)	{_cover_sum+= _col_bpart;};
							
						}
				}
			
			if (	(_h_func == _func_highlite)	&&	(_func_highlite != 0.)	)
				{
					vec4 _end_color = vec4(_helper_col.r,_helper_col.g,_helper_col.b,1.);
					gl_FragColor = _end_color;
				}
			else
				{
					vec3 _in_color = texture2D(	surf_postproces,v_vTexcoord	).rgb;
					vec3 _stepcolor = mix(_in_color,_helper_col,1.-_cover_sum);
					vec4 _end_color = vec4(_stepcolor.r,_stepcolor.g,_stepcolor.b,1.);
					gl_FragColor = _end_color;
				}
		}
	else
		{
			
			float _check_range = 2.;
			float _bright_sum = 0.;
			float _highlite = 0.;
			vec4 _sampled_col = vec4(0.);
			for(float _x = -_check_range; _x < _check_range + 1.; _x += 1.)
				{
					for(float _y = -_check_range; _y < _check_range + 1.; _y += 1.)
						{
							vec2 _check_texcoord = vec2(v_vTexcoord.x + _x * dgw, v_vTexcoord.y + _y * dgh);
							vec4 _chc4 = texture2D( surf_helpers, _check_texcoord );
							if (_chc4.a > 0.)
								{
									_bright_sum += 1.;
									vec3 _check_hc3 =		vec3(decodeColor(_chc4.r));
									_sampled_col = vec4(_check_hc3.r,_check_hc3.g,_check_hc3.b,1.);
									float _check_func = _chc4.b;
									if (_check_func == _func_highlite)	{_highlite = 1.;};
									break;
								}
							
						}
				}
			if (_bright_sum > 0.)
				{
					if (	(_func_highlite != 0.)	&&	(_highlite > 0.)	)
						{
							gl_FragColor = vec4(1.);
						}
					else
						{
							gl_FragColor = _sampled_col;
						}
				}
			
		}
    
}
