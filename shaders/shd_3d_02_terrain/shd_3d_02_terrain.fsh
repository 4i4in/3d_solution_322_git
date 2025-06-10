//precision highp float;

varying vec2 v_vTexcoord;
varying vec3 v_Normal;
varying float v_DistanceToCamera;

varying vec3 v_WorldPosition;//real world xyz
varying highp vec3 v_ref_space_pos;//reference xyz in object space

uniform float draw_grid;
uniform float gridSpacingX;
uniform float gridSpacingY;
uniform float gridSpacingZ;
uniform float gridXtreshold;
uniform float gridYtreshold;
uniform float gridZtreshold;
uniform float gridXshift;
uniform float gridYshift;
uniform float gridZshift;

uniform float is_material;//material true or texture

uniform float dgw;
uniform float dgh;
//uniform float game_time;
uniform float seed;

//uniform highp float obj_hash;
uniform float obj_hash;
uniform float obj_part_num;

uniform sampler2D normal_texture;
uniform sampler2D tex_normal_std;

uniform sampler2D tex_g_buff;

uniform sampler2D tex_color_std;
uniform sampler2D tex_rnd_noise;

float tex_size = 256.;
//uniform highp float obj_hash;
uniform float _sol_vec[3];
uniform float _sol_col[3];

uniform float _shd_mix;

//functions
float returnRandom(float number, float significant)
	{
		float _magic_num = (seed + number) * 31. + 1013.;
		float _moded = mod(_magic_num,  65519.);
		float power_of_ten = pow(10.0, significant);
		float last_digits = mod(_moded, power_of_ten);
		return	(last_digits);
	}
vec3 noiseColor(vec3 source_color,float _dist_mul,float _bmul)
	{
		float _bval = 0.004;	
					
		float _take1 = returnRandom(	(	mod(v_vTexcoord.x*1024.,17.) + mod(v_ref_space_pos.y,23.) + mod(v_ref_space_pos.z,31.)	)*_dist_mul	,3.)/251.;
		float _take2 = returnRandom(	(	mod(v_ref_space_pos.x,29.) + mod(v_vTexcoord.y*1024.,37.) + mod(obj_hash,19.)	)*_dist_mul	,3.)/257.;
					
		float _take3 = returnRandom(	(	mod(v_vTexcoord.x*1024.,23.) + mod(v_ref_space_pos.x,17.) + mod(v_ref_space_pos.y,41.)	)*_dist_mul	,3.)/241.;
		float _take4 = returnRandom(	(	mod(v_ref_space_pos.z,59.) + mod(v_vTexcoord.y*1024.,67.) + mod(obj_hash,31.)	)*_dist_mul	,3.)/263.;
					
		float _take5 = returnRandom(	(	mod(v_vTexcoord.x*1024.,19.) + mod(v_ref_space_pos.x,31.) + mod(v_ref_space_pos.z,43.)	)*_dist_mul	,3.)/269.;
		float _take6 = returnRandom(	(	mod(v_ref_space_pos.y,17.) + mod(v_vTexcoord.y*1024.,41.) + mod(obj_hash,47.)	)*_dist_mul	,3.)/233.;
					
		vec4 _tcr1 = texture2D(tex_rnd_noise,vec2(_take4,_take3));
		vec4 _tcr2 = texture2D(tex_rnd_noise,vec2(_take5,_take2));
		vec4 _tcr3 = texture2D(tex_rnd_noise,vec2(_take6,_take1));
					
		vec4 _tcr4 = texture2D(tex_rnd_noise,vec2(_take1,_take4));
		vec4 _tcr5 = texture2D(tex_rnd_noise,vec2(_take2,_take6));
		vec4 _tcr6 = texture2D(tex_rnd_noise,vec2(_take3,_take5));
					
		_tcr1 = mix(_tcr1,_tcr5,_tcr3.r);
		_tcr2 = mix(_tcr2,_tcr6,_tcr5.g);
		_tcr3 = mix(_tcr3,_tcr4,_tcr1.b);
					
		if (_tcr1.r > _tcr3.g)	{source_color.r = source_color.r + (_bval * (_tcr2.b*_bmul)	);};
		if (_tcr2.r > _tcr3.b)	{source_color.r = source_color.r - (_bval * (_tcr1.g*_bmul)	);};
					
		if (_tcr2.g > _tcr1.r)	{source_color.g = source_color.g + (_bval * (_tcr3.b*_bmul)	);};
		if (_tcr3.g > _tcr1.b)	{source_color.g = source_color.g - (_bval * (_tcr2.r*_bmul)	);};
					
		if (_tcr3.b > _tcr2.g)	{source_color.b = source_color.b + (_bval * (_tcr1.r*_bmul)	);};
		if (_tcr1.b > _tcr2.r)	{source_color.b = source_color.b - (_bval * (_tcr3.g*_bmul)	);};
					
		//secondary noise
		_dist_mul *= 10.;
		_bmul *= 2.;
					
		_take1 = returnRandom(	(	mod(v_vTexcoord.x*1024.,89.) + mod(v_ref_space_pos.y,31.) + mod(v_ref_space_pos.z,79.)	)*_dist_mul	,3.)/251.;
		_take2 = returnRandom(	(	mod(v_ref_space_pos.x,83.) + mod(v_vTexcoord.y*1024.,43.) + mod(obj_hash,73.)	)*_dist_mul	,3.)/257.;
					
		_take3 = returnRandom(	(	mod(v_vTexcoord.x*1024.,67.) + mod(v_ref_space_pos.x,47.) + mod(v_ref_space_pos.y,47.)	)*_dist_mul	,3.)/241.;
		_take4 = returnRandom(	(	mod(v_ref_space_pos.z,37.) + mod(v_vTexcoord.y*1024.,19.) + mod(obj_hash,53.)	)*_dist_mul	,3.)/263.;
					
		_take5 = returnRandom(	(	mod(v_vTexcoord.x*1024.,109.) + mod(v_ref_space_pos.x,67.) + mod(v_ref_space_pos.z,59.)	)*_dist_mul	,3.)/269.;
		_take6 = returnRandom(	(	mod(v_ref_space_pos.y,107.) + mod(v_vTexcoord.y*1024.,103.) + mod(obj_hash,61.)	)*_dist_mul	,3.)/233.;
					
		_tcr1 = texture2D(tex_rnd_noise,vec2(_take4,_take3));
		_tcr2 = texture2D(tex_rnd_noise,vec2(_take5,_take2));
		_tcr3 = texture2D(tex_rnd_noise,vec2(_take6,_take1));
					
		_tcr4 = texture2D(tex_rnd_noise,vec2(_take1,_take4));
		_tcr5 = texture2D(tex_rnd_noise,vec2(_take2,_take6));
		_tcr6 = texture2D(tex_rnd_noise,vec2(_take3,_take5));
					
		_tcr1 = mix(_tcr1,_tcr5,_tcr3.r);
		_tcr2 = mix(_tcr2,_tcr6,_tcr5.g);
		_tcr3 = mix(_tcr3,_tcr4,_tcr1.b);
					
		if (_tcr1.r > _tcr3.g)	{source_color.r = source_color.r + (_bval * (_tcr2.b*_bmul)	);};
		if (_tcr2.r > _tcr3.b)	{source_color.r = source_color.r - (_bval * (_tcr1.g*_bmul)	);};
					
		if (_tcr2.g > _tcr1.r)	{source_color.g = source_color.g + (_bval * (_tcr3.b*_bmul)	);};
		if (_tcr3.g > _tcr1.b)	{source_color.g = source_color.g - (_bval * (_tcr2.r*_bmul)	);};
					
		if (_tcr3.b > _tcr2.g)	{source_color.b = source_color.b + (_bval * (_tcr1.r*_bmul)	);};
		if (_tcr1.b > _tcr2.r)	{source_color.b = source_color.b - (_bval * (_tcr3.g*_bmul)	);};
					
		return source_color;	
	}
vec3 toNormalColor(vec3 normal)
	{
		return normal * 0.5 + 0.5;	
	}
float encodeColor(vec3 color) 
	{
		return (floor(color.r * 255.) * 65536. +	floor(color.g * 255.)* 256. +	floor(color.b * 255.));
	}
void main()
{
	float _g_buff_ = texture2D(	tex_g_buff,vec2(gl_FragCoord.x * dgw,gl_FragCoord.y * dgh)	).r;
	if (_g_buff_ > 0.)
		{	if (v_DistanceToCamera > _g_buff_)	{discard;}	};
		
	//grid calc
	float _is_grid_lineX = 0.;	float _is_grid_lineY = 0.;	float _is_grid_lineZ = 0.;
	if (draw_grid > 0.)
		{
			if (mod(v_WorldPosition.x - gridXshift,gridSpacingX) < gridXtreshold)	{_is_grid_lineX = 1.;};
			if (mod(v_WorldPosition.x - gridXshift,gridSpacingX) > gridSpacingX - gridXtreshold)	{_is_grid_lineX = 1.;};
			
			if (mod(v_WorldPosition.y - gridYshift,gridSpacingY) < gridYtreshold)	{_is_grid_lineY = 1.;};
			if (mod(v_WorldPosition.y - gridYshift,gridSpacingY) > gridSpacingY - gridYtreshold)	{_is_grid_lineY = 1.;};
			
			if (mod(v_WorldPosition.z - gridZshift,gridSpacingZ) < gridZtreshold)	{_is_grid_lineZ = 1.;};
			if (mod(v_WorldPosition.z - gridZshift,gridSpacingZ) > gridSpacingZ - gridZtreshold)	{_is_grid_lineZ = 1.;};
		};
	//grid calc
	vec4 _base_color = vec4(0.,0.,0.,1.);	
	vec4 _col1 = vec4(0.,0.,0.,1.);	vec4 _col2 = vec4(0.,0.,0.,1.);	//vec4 _col3 = vec4(0.,0.,0.,1.);	vec4 _col4 = vec4(0.,0.,0.,1.);
	//vec4 _col5 = vec4(0.,0.,0.,1.);	vec4 _col6 = vec4(0.,0.,0.,1.);
	float _num1 = 0.;	float _num2 = 0.;	float _num3 = 0.;
	float v_vTex_x = 0.;	float v_vTex_y = 0.;
	
#region	//shading texture
		//v_ref_space_pos, obj_hash,	v_vTexcoord
		
	//TBD line thicknes controll
	float _dist_mul = 0.1;
	float chance = 0.8;
	float trigmul = 10.;
		
	float _take1 = returnRandom(	(	v_ref_space_pos.x + v_ref_space_pos.y + v_ref_space_pos.z	)*_dist_mul	,3.)/1019.;
	float _take2 = returnRandom(	(	v_ref_space_pos.x + v_ref_space_pos.y + v_ref_space_pos.z	)*_dist_mul	,3.)/1021.;
		
	float _take3 = returnRandom(	(	v_ref_space_pos.x - v_ref_space_pos.y + v_ref_space_pos.z	)*_dist_mul	,3.)/1087.;
	float _take4 = returnRandom(	(	v_ref_space_pos.x - v_ref_space_pos.y + v_ref_space_pos.z	)*_dist_mul	,3.)/1091.;
		
	float _take5 = returnRandom(	(	v_ref_space_pos.x + v_ref_space_pos.y - v_ref_space_pos.z	)*_dist_mul	,3.)/1033.;
	float _take6 = returnRandom(	(	v_ref_space_pos.x + v_ref_space_pos.y - v_ref_space_pos.z	)*_dist_mul	,3.)/1031.;
		
	vec4 _tcr1 = texture2D(tex_rnd_noise,vec2(_take1,_take2));
	vec4 _tcr2 = texture2D(tex_rnd_noise,vec2(_take3,_take4));
	vec4 _tcr3 = texture2D(tex_rnd_noise,vec2(_take5,_take6));
	
	vec4 _lim1 = texture2D(tex_rnd_noise,vec2(_take4 + sin(floor(v_ref_space_pos.x*trigmul)),_take1 - cos(floor(v_ref_space_pos.y*trigmul))));
	vec4 _red1 = texture2D(tex_rnd_noise,vec2(_take6 + sin(floor(v_ref_space_pos.y*trigmul)),_take3 - cos(floor(v_ref_space_pos.z*trigmul))));
	vec4 _fil1 = texture2D(tex_rnd_noise,vec2(_take2 + sin(floor(v_ref_space_pos.z*trigmul)),_take5 - cos(floor(v_ref_space_pos.x*trigmul))));
	
	_tcr1.r = max(max(_tcr1.r,_tcr2.r),_tcr3.r);
	_tcr1.g = max(max(_tcr1.g,_tcr2.g),_tcr3.g);
	_tcr1.b = max(max(_tcr1.b,_tcr2.b),_tcr3.b);
	
	vec3 tcr_R = vec3(_tcr1.r,_tcr1.g,_tcr1.b);
	if (_tcr1.r > _lim1.g * chance)
		{
			if (	min(_tcr1.g,_tcr1.b) > max(_fil1.g,_fil1.b)	)
				{
					tcr_R.r = _tcr1.r * _fil1.b * _red1.g;
				}
		}
	if (_tcr1.g > _lim1.b * chance)
		{
			if (	min(_tcr1.b,_tcr1.r) > max(_fil1.b,_fil1.r)	)
				{
					tcr_R.g = _tcr1.g * _fil1.r * _red1.b;
				}
		}
	if (_tcr1.b > _lim1.r * chance)
		{
			if (	min(_tcr1.r,_tcr1.g) > max(_fil1.r,_fil1.g)	)
				{
					tcr_R.b = _tcr1.b * _fil1.b * _red1.r;
				}
		}
		
	_col2 = vec4(tcr_R.r,tcr_R.g,tcr_R.b,1.);
		
	vec3 _shading_color = vec3(1.-_col2.r,1.-_col2.g,1.-_col2.b);
#endregion
	
	

			

#region
	_base_color = texture2D(tex_color_std,	vec2(v_vTexcoord.x/4.,v_vTexcoord.y/4.)	);
		
	_base_color = vec4(noiseColor(vec3(_base_color.r,_base_color.g,_base_color.b),0.001,4.),1.);
	_base_color = vec4(noiseColor(vec3(_base_color.r,_base_color.g,_base_color.b),0.01,4.),1.);
#endregion			

	vec3 tex_WorldPosition = vec3(v_WorldPosition.x/tex_size,v_WorldPosition.y/tex_size,v_WorldPosition.z/tex_size);
	vec3 _normal_displace = vec3(0.,0.,1.);	vec3 _sample_normal_v3 = vec3(0.,0.,1.);
	vec4 _take_normal_displace = vec4(0.,0.,1.,1.);
	
	_take_normal_displace = texture2D(tex_normal_std,v_vTexcoord);
	_take_normal_displace -=0.5;	_take_normal_displace *2.;
			
	_normal_displace = vec3(_take_normal_displace.x,_take_normal_displace.y,_take_normal_displace.z);	

#region		//(is_material == 1.)
	//v_ref_space_pos, obj_hash,	v_vTexcoord
					
	float _div = 64.;
	float _refx = 0.;	float _refy = 0.;	float _refz = 0.;
					
	float _step1 = floor(v_ref_space_pos.z / _div);
	float _step2 = returnRandom(_step1,2.)-50.;
	_refz = v_ref_space_pos.z + _step2;
					
	_step1 = floor(v_ref_space_pos.y / abs(_div+_step2));
	_step2 = returnRandom(_step1,2.)-50.;
	_refy = v_ref_space_pos.y + _step2;
					
	_step1 = floor(v_ref_space_pos.x / abs(_div+_step2));
	_step2 = returnRandom(_step1,2.)-50.;
	_refx = v_ref_space_pos.x + _step2;
					
	vec3 _local_dirvec = vec3(	_refx - v_ref_space_pos.x,	_refy  - v_ref_space_pos.y,	_refz  - v_ref_space_pos.z	);
	if (_local_dirvec.z < 0.)	{	_local_dirvec.z *= -1.;	};
	_normal_displace = _local_dirvec;
					
	if (	_normal_displace.z < 0.5	)	{	_normal_displace.z = 1.;	};

#endregion

	
	
	//_normal_displace.z = 1.;
	_normal_displace = normalize(_normal_displace);
	_sample_normal_v3 = vec3(
							v_Normal.x * _normal_displace.x	+v_Normal.x * _normal_displace.y	+v_Normal.x * _normal_displace.z,
							v_Normal.y * _normal_displace.x	+v_Normal.y * _normal_displace.y	+v_Normal.y * _normal_displace.z,
							v_Normal.z * _normal_displace.x	+v_Normal.z * _normal_displace.y	+v_Normal.z * _normal_displace.z
							);
							
	normalize(_sample_normal_v3);	
	
	//sol
	vec3 lightDirection = vec3(_sol_vec[0],_sol_vec[1],_sol_vec[2]);
	lightDirection = normalize(lightDirection);
	vec3 light_color = vec3(_sol_col[0],_sol_col[1],_sol_col[2]);
	
	
	
	vec3 _result_color = vec3(0.,0.,0.);
	float NdotL = 0.;

	NdotL = -dot(_sample_normal_v3, lightDirection);
	NdotL += 2.;	
	
	
	vec4 _source_color = texture2D(tex_color_std,	vec2(v_vTexcoord.x/4.,v_vTexcoord.y/4.)	);
			
	v_vTex_x = floor(abs((NdotL*2.)-6.));
	vec3 _result_color1 = texture2D(tex_color_std,	vec2(	(v_vTexcoord.x/4.) + .25 * v_vTex_x,	(v_vTexcoord.y/4.) + .25 * v_vTex_y		)	).rgb;
	_result_color1 = vec3(
							_result_color1.r + _source_color.r - _base_color.r,
							_result_color1.g + _source_color.g - _base_color.g,
							_result_color1.b + _source_color.b - _base_color.b
							);
	NdotL /= 3.;//must be kept
	
	if (_shd_mix > 0.)
		{
			float NdotReal = -dot(v_Normal, lightDirection);
			float _NdotL_mix = (NdotReal+1.)/2.;
			float _NdotL_mul = 1.-(NdotReal+1.)/2.;
			float _shading_min = min(min(_shading_color.r,_shading_color.g),_shading_color.b);
			vec3 _result_color2 =	vec3(
											light_color.r * _result_color1.r,
											light_color.g * _result_color1.g,
											light_color.b * _result_color1.b
										);
			if (_shading_min < _NdotL_mul*_shd_mix)
				{
					_result_color = vec3(
									mix(_result_color2.r,mix(_shading_min,_result_color1.r,_shading_min),_NdotL_mix),
									mix(_result_color2.g,mix(_shading_min,_result_color1.g,_shading_min),_NdotL_mix),
									mix(_result_color2.b,mix(_shading_min,_result_color1.b,_shading_min),_NdotL_mix)
										);
				}
			else
				{
					_result_color = mix(_result_color1,_result_color2,_shd_mix);
				}
		}
	else	{_result_color = _result_color1;};
	
	
	
	
	//exception discardning color
	if (draw_grid > 0.)
		{
			if (_is_grid_lineX > 0.)	{_result_color = vec3(_is_grid_lineX,_is_grid_lineY,_is_grid_lineZ);};
			if (_is_grid_lineY > 0.)	{_result_color = vec3(_is_grid_lineX,_is_grid_lineY,_is_grid_lineZ);};
			if (_is_grid_lineZ > 0.)	{_result_color = vec3(_is_grid_lineX,_is_grid_lineY,_is_grid_lineZ);};
		}
		
	_result_color = clamp(_result_color,vec3(0.0), vec3(1.0));
	
	
	
	vec4 _encoded_color_surf = vec4(0.,0.,0.,1.);
	_encoded_color_surf.r =		encodeColor(_result_color);
	_encoded_color_surf.g =		encodeColor(vec3(toNormalColor(_sample_normal_v3)));
	_encoded_color_surf.b =		NdotL;
	
	vec4 _encoded_color_effects = vec4(0.,0.,0.,1.);
	_encoded_color_effects.r =		encodeColor(_shading_color);
	_encoded_color_effects.g =		is_material;
	_encoded_color_effects.b =		encodeColor(toNormalColor(v_Normal));
	
	
	gl_FragData[0] = _encoded_color_surf;	//color,normal,transparent
	gl_FragData[1] = _encoded_color_effects;
	gl_FragData[2] = vec4(v_DistanceToCamera,obj_hash,0.,1.);
	gl_FragData[3] = vec4(v_WorldPosition.x,v_WorldPosition.y,v_WorldPosition.z,1.);
}
