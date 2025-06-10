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
uniform float game_time;
uniform float seed;

//uniform highp float obj_hash;
uniform float obj_hash;
uniform float chosen_obj_hash;
uniform float obj_part_num;

uniform float normal_texture_set;
uniform sampler2D normal_texture;
uniform sampler2D tex_normal_std;

uniform sampler2D tex_g_buff;

uniform float color_texture_set;
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
vec3 fromNormalColor(vec3 color)
	{
		return (color - 0.5) * 2.;
	}
float encodeColor(vec3 color) 
	{
		return (floor(color.r * 255.) * 65536. +	floor(color.g * 255.)* 256. +	floor(color.b * 255.));
	}
vec3 decodeColor(float encodedColor) 
	{
	    float colr256 = floor(encodedColor / 65536.);
		float colr65536 = colr256 * 65536.;
	    float colg256 = floor((encodedColor - colr65536) / 256.);
	    float colb256 = floor(encodedColor - colr65536 - colg256 * 256.);
	    return (vec3(colr256, colg256, colb256) / 255.);
	}
mat3 rotationX(float angle) 
{
    float ss = sin(angle);
    float cc = cos(angle);
    return mat3(1.0, 0.0, 0.0,
                0.0, cc, -ss,
                0.0, ss, cc);
}
mat3 rotationY(float angle) 
{
    float ss = sin(angle);
    float cc = cos(angle);
    return mat3(cc, 0.0, ss,
                0.0, 1.0, 0.0,
                -ss, 0.0, cc);
}
mat3 rotationZ(float angle) 
{
    float ss = sin(angle);
    float cc = cos(angle);
    return mat3(cc, -ss, 0.0,
                ss, cc, 0.0,
                0.0, 0.0, 1.0);
}
vec3 rotateVector(vec3 vv, float xrot, float yrot, float zrot)
{
    mat3 rotX = rotationX(xrot);
    mat3 rotY = rotationY(yrot);
    mat3 rotZ = rotationZ(zrot);
	vec3 result = rotZ * (rotY * (rotX * vv));
	if (length(result) > 0.)	{	result = result;}
	else						{	result = vv;};
	return(result);
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
		
		float _take1 = returnRandom(	(	v_ref_space_pos.x + v_ref_space_pos.y + v_ref_space_pos.z	)*_dist_mul	,3.)/1019.;
		float _take2 = returnRandom(	(	v_ref_space_pos.x + v_ref_space_pos.y + v_ref_space_pos.z	)*_dist_mul	,3.)/1021.;
		
		float _take3 = returnRandom(	(	v_ref_space_pos.x - v_ref_space_pos.y + v_ref_space_pos.z	)*_dist_mul	,3.)/1087.;
		float _take4 = returnRandom(	(	v_ref_space_pos.x - v_ref_space_pos.y + v_ref_space_pos.z	)*_dist_mul	,3.)/1091.;
		
		float _take5 = returnRandom(	(	v_ref_space_pos.x + v_ref_space_pos.y - v_ref_space_pos.z	)*_dist_mul	,3.)/1033.;
		float _take6 = returnRandom(	(	v_ref_space_pos.x + v_ref_space_pos.y - v_ref_space_pos.z	)*_dist_mul	,3.)/1031.;
		
		vec4 _tcr1 = texture2D(tex_rnd_noise,vec2(_take1,_take2));
		vec4 _tcr2 = texture2D(tex_rnd_noise,vec2(_take3,_take4));
		vec4 _tcr3 = texture2D(tex_rnd_noise,vec2(_take5,_take6));
		
		_tcr1.r = max(max(_tcr1.r,_tcr2.r),_tcr3.r);
		_tcr1.g = max(max(_tcr1.g,_tcr2.g),_tcr3.g);
		_tcr1.b = max(max(_tcr1.b,_tcr2.b),_tcr3.b);
		
		_col2 = vec4(_tcr1.r,_tcr1.g,_tcr1.b,1.);
		
		//float _avgC = 1.- (_col2.r + _col2.g + _col2.b)/3.;
		vec3 _shading_color = vec3(1.-_col2.r,1.-_col2.g,1.-_col2.b);
		//_base_color = vec4(_avgC,_avgC,_avgC,1.);
#endregion
	
	
	if (is_material > 0.)//noisy color
		{
			if (color_texture_set < 0.)
				{
					_base_color = texture2D(tex_color_std,	vec2(v_vTexcoord.x/4.,v_vTexcoord.y/4.)	);
				}
			else
				{	_base_color = texture2D(gm_BaseTexture,v_vTexcoord);	};

#region		//(is_material == 1.)
			if (	(is_material == 1.)	||	(is_material == 101.)	)//first noisy material
				{
					//v_ref_space_pos, obj_hash,	v_vTexcoord
					float _take1 = returnRandom(	(	mod(v_vTexcoord.x*1024.,17.) + mod(v_ref_space_pos.y,23.) + mod(v_ref_space_pos.z,31.)	)*.03	,3.)/251.;
					float _take2 = returnRandom(	(	mod(v_ref_space_pos.x,29.) + mod(v_vTexcoord.y*1024.,37.) + mod(obj_hash,19.)	)*.03	,3.)/257.;
					
					float _take3 = returnRandom(	(	mod(v_vTexcoord.x*1024.,23.) + mod(v_ref_space_pos.x,17.) + mod(v_ref_space_pos.y,41.)	)*.03	,3.)/241.;
					float _take4 = returnRandom(	(	mod(v_ref_space_pos.z,59.) + mod(v_vTexcoord.y*1024.,67.) + mod(obj_hash,31.)	)*.03	,3.)/263.;
					
					float _take5 = returnRandom(	(	mod(v_vTexcoord.x*1024.,19.) + mod(v_ref_space_pos.x,31.) + mod(v_ref_space_pos.z,43.)	)*.03	,3.)/269.;
					float _take6 = returnRandom(	(	mod(v_ref_space_pos.y,17.) + mod(v_vTexcoord.y*1024.,41.) + mod(obj_hash,47.)	)*.03	,3.)/233.;
					
					vec4 _tcr1 = texture2D(tex_rnd_noise,vec2(_take1,_take4));
					vec4 _tcr2 = texture2D(tex_rnd_noise,vec2(_take2,_take5));
					vec4 _tcr3 = texture2D(tex_rnd_noise,vec2(_take3,_take6));
					
					
					_col2.r = max(max(_tcr1.r,_tcr2.g),_tcr3.b);
					_col2.g = max(max(_tcr1.g,_tcr2.b),_tcr3.r);
					_col2.b = max(max(_tcr1.b,_tcr2.r),_tcr3.g);
					
					v_vTex_y = mod(floor(max(_col2.r,_col2.g) * 3331.),4.);
					_col1 = texture2D(tex_color_std,	vec2(	(v_vTexcoord.x/4.),	(v_vTexcoord.y/4.) + .25 * v_vTex_y		)	);

					_base_color = mix(_base_color,_col1,_col2.b*_col2.b);
					_base_color.a = 1.;
				};
#endregion			

#region		//(is_material == 2.) //no color change just noise in normal
			if (	(is_material == 2.)	||	(is_material == 102.)	)//first noisy material
				{
					
				};
#endregion	

#region		//(is_material == 3.) //for now any material
			if (	(is_material == 3.)	||	(is_material == 103.)	)//first noisy material
				{
					//v_ref_space_pos, obj_hash,	v_vTexcoord
					float _div = 4.;
					float _nearest_x1 = 0.;	float _nearest_y1 = 0.;	float _nearest_z1 = 0.;
					
					float _div_x = 0.;	float _div_y = 0.;	float _div_z = 0.;
					
					if (fract(v_ref_space_pos.x / _div) > 0.5)	{	_div_x = ceil(v_ref_space_pos.x / _div);	}
					else										{	_div_x = floor(v_ref_space_pos.x / _div);	};
					
					if (	mod(_div_x,2.) == 0.	)
						{
							if (fract(v_ref_space_pos.y / _div) > 0.5)	{	_div_y = ceil(v_ref_space_pos.y / _div);	}
							else										{	_div_y = floor(v_ref_space_pos.y / _div);	};
							
							if (fract(v_ref_space_pos.z / _div) > 0.5)	{	_div_z = ceil(	(v_ref_space_pos.z + _div/2.) / _div);	}
							else										{	_div_z = floor(	(v_ref_space_pos.z - _div/2.) / _div);	};
						}
					else
						{
							if (fract(v_ref_space_pos.y / _div) > 0.5)	{	_div_y = ceil(	(v_ref_space_pos.y + _div/2.) / _div);	}
							else										{	_div_y = floor(	(v_ref_space_pos.y - _div/2.) / _div);	};
							
							if (fract(v_ref_space_pos.z / _div) > 0.5)	{	_div_z = ceil(v_ref_space_pos.z / _div);	}
							else										{	_div_z = floor(v_ref_space_pos.z / _div);	};
						}
					float _take1 = returnRandom(_div_x,2.)/197.;
					float _take2 = returnRandom(_div_y,2.)/181.;
					float _take3 = returnRandom(_div_z,2.)/179.;
					
					vec4 _tcr1 = texture2D(tex_rnd_noise,vec2(_take1,_take2));
					vec4 _tcr2 = texture2D(tex_rnd_noise,vec2(_take3,_take1));
					
					_col2.r = min(_tcr1.r,_tcr2.r);
					_col2.g = min(_tcr1.g,_tcr2.g);
					_col2.b = min(_tcr1.b,_tcr2.b);
					
					v_vTex_y = mod(floor(max(_col2.r,_col2.g) * 3331.),4.);
					_col1 = texture2D(tex_color_std,	vec2(	(v_vTexcoord.x/4.),	(v_vTexcoord.y/4.) + .25 * v_vTex_y		)	);

					_base_color = mix(_base_color,_col1,_col2.b*_col2.b);
					_base_color.a = 1.;
				};
#endregion		
#region		
			if (	(is_material == 7.)	||	(is_material == 107.)	)//cros shading try
				{
					_base_color = vec4(noiseColor(vec3(_base_color.r,_base_color.g,_base_color.b),0.001,4.),1.);
					_base_color = vec4(noiseColor(vec3(_base_color.r,_base_color.g,_base_color.b),0.01,4.),1.);
				};
#endregion	
#region		//(is_material == 9.)//cros shading color chaos
			if (	(is_material == 9.)	||	(is_material == 109.)	)//cros shading try
				{
					//v_ref_space_pos, obj_hash,	v_vTexcoord
					
					/* good
					float _dist_mul =  4./v_DistanceToCamera;
					if (_dist_mul > 0.1)	{_dist_mul = 0.1;};
					if (_dist_mul < 0.01)	{_dist_mul = 0.01;};
					_dist_mul *= 1000.;
					_dist_mul = floor(_dist_mul)*0.001;
					*/
					float _dist_mul = 0.1;
					
					float _take1 = returnRandom(	(	mod(v_vTexcoord.x*1024.,17.) + mod(v_ref_space_pos.y,23.) + mod(v_ref_space_pos.z,31.)	)*_dist_mul	,3.)/251.;
					float _take2 = returnRandom(	(	mod(v_ref_space_pos.x,29.) + mod(v_vTexcoord.y*1024.,37.) + mod(obj_hash,19.)	)*_dist_mul	,3.)/257.;
					
					float _take3 = returnRandom(	(	mod(v_vTexcoord.x*1024.,23.) + mod(v_ref_space_pos.x,17.) + mod(v_ref_space_pos.y,41.)	)*_dist_mul	,3.)/241.;
					float _take4 = returnRandom(	(	mod(v_ref_space_pos.z,59.) + mod(v_vTexcoord.y*1024.,67.) + mod(obj_hash,31.)	)*_dist_mul	,3.)/263.;
					
					float _take5 = returnRandom(	(	mod(v_vTexcoord.x*1024.,19.) + mod(v_ref_space_pos.x,31.) + mod(v_ref_space_pos.z,43.)	)*_dist_mul	,3.)/269.;
					float _take6 = returnRandom(	(	mod(v_ref_space_pos.y,17.) + mod(v_vTexcoord.y*1024.,41.) + mod(obj_hash,47.)	)*_dist_mul	,3.)/233.;
					
					vec4 _tcr1 = texture2D(tex_rnd_noise,vec2(_take4,_take3));
					vec4 _tcr2 = texture2D(tex_rnd_noise,vec2(_take5,_take2));
					vec4 _tcr3 = texture2D(tex_rnd_noise,vec2(_take6,_take1));
					
					
					_col2.r = max(max(_tcr1.r,_tcr2.r),_tcr3.r);
					_col2.g = max(max(_tcr1.g,_tcr2.g),_tcr3.g);
					_col2.b = max(max(_tcr1.b,_tcr2.b),_tcr3.b);
					
					//float _avgC = 1.- (_col2.r + _col2.g + _col2.b)/3.;
					_base_color = vec4(_col2.r,_col2.g,_col2.b,1.);
					//_base_color = vec4(_avgC,_avgC,_avgC,1.);
				};
#endregion					
#region		
			if (	(is_material == 10.)	||	(is_material == 110.)	)//cros shading try
				{
					_base_color = vec4(noiseColor(vec3(_base_color.r,_base_color.g,_base_color.b),0.01,8.),1.);
					
				};
#endregion		

		}
	else
		{
			if (color_texture_set < 0.)
				{
					_base_color = texture2D(tex_color_std,	vec2(v_vTexcoord.x/4.,v_vTexcoord.y/4.)	);
				}
			else
				{	_base_color = texture2D(gm_BaseTexture,v_vTexcoord);	};
		}
	
	vec3 tex_WorldPosition = vec3(v_WorldPosition.x/tex_size,v_WorldPosition.y/tex_size,v_WorldPosition.z/tex_size);
	vec3 _normal_displace = vec3(0.,0.,1.);	vec3 _sample_normal_v3 = vec3(0.,0.,1.);
	vec4 _take_normal_displace = vec4(0.,0.,1.,1.);
	
	if (is_material > 0.)//noisy normal
		{
			if	(normal_texture_set < 0.)
				{
					_take_normal_displace = texture2D(tex_normal_std,v_vTexcoord);
				}
			else	{	_take_normal_displace = texture2D(normal_texture,v_vTexcoord);};
			_take_normal_displace -=0.5;	_take_normal_displace *2.;
			
			_normal_displace = vec3(_take_normal_displace.x,_take_normal_displace.y,_take_normal_displace.z);	

#region		//(is_material == 1.)
			if (	(is_material == 1.)	||	(is_material == 101.)	)//first noisy material
				{
					//v_ref_space_pos, obj_hash,	v_vTexcoord
					
					float _take1 = returnRandom(	(	mod(v_vTexcoord.x*1024.,17.) + mod(v_ref_space_pos.y,23.) + mod(v_ref_space_pos.z,31.)	)*.001	,3.)/256.;
					float _take2 = returnRandom(	(	mod(v_ref_space_pos.x,29.) + mod(v_vTexcoord.y*1024.,37.) + mod(obj_hash,19.)	)*.001	,3.)/256.;
					
					float _take11 = returnRandom(	(	mod(v_vTexcoord.x*1024.,17.) + mod(v_ref_space_pos.y,23.) + mod(v_ref_space_pos.z,31.)	)*.1	,3.)/256.;
					float _take21 = returnRandom(	(	mod(v_ref_space_pos.x,29.) + mod(v_vTexcoord.y*1024.,37.) + mod(obj_hash,19.)	)*.1	,3.)/256.;
					
					
					float _take3 = returnRandom(	(	mod(v_vTexcoord.x*1024.,17.) + mod(v_ref_space_pos.x,23.) + mod(v_ref_space_pos.y,31.)	)*.001	,3.)/256.;
					float _take4 = returnRandom(	(	mod(v_ref_space_pos.z,29.) + mod(v_vTexcoord.y*1024.,37.) + mod(obj_hash,19.)	)*.001	,3.)/256.;
					
					float _take31 = returnRandom(	(	mod(v_vTexcoord.x*1024.,17.) + mod(v_ref_space_pos.x,23.) + mod(v_ref_space_pos.y,31.)	)*.1	,3.)/256.;
					float _take41 = returnRandom(	(	mod(v_ref_space_pos.z,29.) + mod(v_vTexcoord.y*1024.,37.) + mod(obj_hash,19.)	)*.1	,3.)/256.;
					
					
					float _take5 = returnRandom(	(	mod(v_vTexcoord.x*1024.,17.) + mod(v_ref_space_pos.x,23.) + mod(v_ref_space_pos.z,31.)	)*.001	,3.)/256.;
					float _take6 = returnRandom(	(	mod(v_ref_space_pos.y,29.) + mod(v_vTexcoord.y*1024.,37.) + mod(obj_hash,19.)	)*.001	,3.)/256.;
					
					float _take51 = returnRandom(	(	mod(v_vTexcoord.x*1024.,17.) + mod(v_ref_space_pos.x,23.) + mod(v_ref_space_pos.z,31.)	)*.1	,3.)/256.;
					float _take61 = returnRandom(	(	mod(v_ref_space_pos.y,29.) + mod(v_vTexcoord.y*1024.,37.) + mod(obj_hash,19.)	)*.1	,3.)/256.;
					
					
					vec4 _tcr1 = texture2D(tex_rnd_noise,vec2(_take1,_take2));
					vec4 _tcr11 = texture2D(tex_rnd_noise,vec2(_take11,_take21));
					vec4 _tcr2 = texture2D(tex_rnd_noise,vec2(_take3,_take4));
					vec4 _tcr21 = texture2D(tex_rnd_noise,vec2(_take31,_take41));
					vec4 _tcr3 = texture2D(tex_rnd_noise,vec2(_take5,_take6));
					vec4 _tcr31 = texture2D(tex_rnd_noise,vec2(_take51,_take61));
					
					_tcr1 = mix(_tcr1,_tcr21,0.5);
					_tcr2 = mix(_tcr2,_tcr31,0.5);
					_tcr3 = mix(_tcr3,_tcr11,0.5);
					
					vec3 _tcr = vec3(
										_tcr1.r + _tcr2.g + _tcr3.b,
										_tcr1.g + _tcr2.b + _tcr3.r,
										_tcr1.b + _tcr2.r + _tcr3.g
									);
					
					_num1 = (mod(_tcr.r *3643.,10.)-5.);
					_num2 = (mod(_tcr.g *3517.,10.)-5.);
					_num3 = (mod(_tcr.b *3833.,10.)-5.);
					
					_normal_displace.x += (_num1*0.01);
					_normal_displace.y += (_num2*0.01);
					_normal_displace.z += (_num3*0.01);
					
					if (	_normal_displace.z < 0.5	)	{	_normal_displace.z = 1.;	};
					
				};
#endregion

#region		//(is_material == 2.)
			if  (	(is_material == 2.)	||	(is_material == 102.)	)//first noisy material
				{
					
					//v_ref_space_pos, obj_hash,	v_vTexcoord
					
					float _take1 = returnRandom(	(	mod(v_vTexcoord.x*1024.,17.) + mod(v_ref_space_pos.y,23.) + mod(v_ref_space_pos.z,31.)	)*.001	,3.)/256.;
					float _take2 = returnRandom(	(	mod(v_ref_space_pos.x,29.) + mod(v_vTexcoord.y*1024.,37.) + mod(obj_hash,19.)	)*.001	,3.)/256.;
					
					float _take11 = returnRandom(	(	mod(v_vTexcoord.x*1024.,17.) + mod(v_ref_space_pos.y,23.) + mod(v_ref_space_pos.z,31.)	)*.1	,3.)/256.;
					float _take21 = returnRandom(	(	mod(v_ref_space_pos.x,29.) + mod(v_vTexcoord.y*1024.,37.) + mod(obj_hash,19.)	)*.1	,3.)/256.;
					
					
					float _take3 = returnRandom(	(	mod(v_vTexcoord.x*1024.,17.) + mod(v_ref_space_pos.x,23.) + mod(v_ref_space_pos.y,31.)	)*.001	,3.)/256.;
					float _take4 = returnRandom(	(	mod(v_ref_space_pos.z,29.) + mod(v_vTexcoord.y*1024.,37.) + mod(obj_hash,19.)	)*.001	,3.)/256.;
					
					float _take31 = returnRandom(	(	mod(v_vTexcoord.x*1024.,17.) + mod(v_ref_space_pos.x,23.) + mod(v_ref_space_pos.y,31.)	)*.1	,3.)/256.;
					float _take41 = returnRandom(	(	mod(v_ref_space_pos.z,29.) + mod(v_vTexcoord.y*1024.,37.) + mod(obj_hash,19.)	)*.1	,3.)/256.;
					
					
					float _take5 = returnRandom(	(	mod(v_vTexcoord.x*1024.,17.) + mod(v_ref_space_pos.x,23.) + mod(v_ref_space_pos.z,31.)	)*.001	,3.)/256.;
					float _take6 = returnRandom(	(	mod(v_ref_space_pos.y,29.) + mod(v_vTexcoord.y*1024.,37.) + mod(obj_hash,19.)	)*.001	,3.)/256.;
					
					float _take51 = returnRandom(	(	mod(v_vTexcoord.x*1024.,17.) + mod(v_ref_space_pos.x,23.) + mod(v_ref_space_pos.z,31.)	)*.1	,3.)/256.;
					float _take61 = returnRandom(	(	mod(v_ref_space_pos.y,29.) + mod(v_vTexcoord.y*1024.,37.) + mod(obj_hash,19.)	)*.1	,3.)/256.;
					
					
					vec4 _tcr1 = texture2D(tex_rnd_noise,vec2(_take1,_take2));
					vec4 _tcr11 = texture2D(tex_rnd_noise,vec2(_take11,_take21));
					vec4 _tcr2 = texture2D(tex_rnd_noise,vec2(_take3,_take4));
					vec4 _tcr21 = texture2D(tex_rnd_noise,vec2(_take31,_take41));
					vec4 _tcr3 = texture2D(tex_rnd_noise,vec2(_take5,_take6));
					vec4 _tcr31 = texture2D(tex_rnd_noise,vec2(_take51,_take61));
					
					_tcr1 = mix(_tcr1,_tcr21,0.5);
					_tcr2 = mix(_tcr2,_tcr31,0.5);
					_tcr3 = mix(_tcr3,_tcr11,0.5);
					
					vec3 _tcr = vec3(
										_tcr1.r + _tcr2.g + _tcr3.b,
										_tcr1.g + _tcr2.b + _tcr3.r,
										_tcr1.b + _tcr2.r + _tcr3.g
									);
					
					_num1 = (mod(_tcr.r *3643.,10.)-5.);
					_num2 = (mod(_tcr.g *3517.,10.)-5.);
					_num3 = (mod(_tcr.b *3833.,10.)-5.);
					
					_normal_displace.x += (_num1*0.01);
					_normal_displace.y += (_num2*0.01);
					_normal_displace.z += (_num3*0.01);
					
					if (	_normal_displace.z < 0.5	)	{	_normal_displace.z = 1.;	};
					
				};
#endregion

#region		//(is_material == 3.)
			if  (	(is_material == 3.)	||	(is_material == 103.)	)//first noisy material
				{
					//v_ref_space_pos, obj_hash,	v_vTexcoord
					float _div = 4.;
					float _nearest_x1 = 0.;	float _nearest_y1 = 0.;	float _nearest_z1 = 0.;
					
					float _div_x = 0.;	float _div_y = 0.;	float _div_z = 0.;
					
					if (fract(v_ref_space_pos.x / _div) > 0.5)	{	_div_x = ceil(v_ref_space_pos.x / _div);	}
					else										{	_div_x = floor(v_ref_space_pos.x / _div);	};
					
					if (	mod(_div_x,2.) == 0.	)
						{
							if (fract(v_ref_space_pos.y / _div) > 0.5)	{	_div_y = ceil(v_ref_space_pos.y / _div);	}
							else										{	_div_y = floor(v_ref_space_pos.y / _div);	};
							
							if (fract(v_ref_space_pos.z / _div) > 0.5)	{	_div_z = ceil(	(v_ref_space_pos.z + _div/2.) / _div);	}
							else										{	_div_z = floor(	(v_ref_space_pos.z - _div/2.) / _div);	};
						}
					else
						{
							if (fract(v_ref_space_pos.y / _div) > 0.5)	{	_div_y = ceil(	(v_ref_space_pos.y + _div/2.) / _div);	}
							else										{	_div_y = floor(	(v_ref_space_pos.y - _div/2.) / _div);	};
							
							if (fract(v_ref_space_pos.z / _div) > 0.5)	{	_div_z = ceil(v_ref_space_pos.z / _div);	}
							else										{	_div_z = floor(v_ref_space_pos.z / _div);	};
						}
					
					vec3 _local_dirvec = vec3(	_div_x*_div - v_ref_space_pos.x,	_div_y*_div  - v_ref_space_pos.y,	_div_z*_div  - v_ref_space_pos.z	);

					_normal_displace = mix(_normal_displace,_local_dirvec,0.1);
					
				};
#endregion

#region		//(is_material == 4.)
			if  (	(is_material == 4.)	||	(is_material == 104.)	)//first noisy material
				{
					//v_ref_space_pos, obj_hash,	v_vTexcoord
					float _div = 32.;
					float _nearest_x1 = 0.;	float _nearest_y1 = 0.;	float _nearest_z1 = 0.;
					
					float _div_x = 0.;	float _div_y = 0.;	float _div_z = 0.;
					
					if (fract(v_ref_space_pos.x / _div) > 0.5)	{	_div_x = ceil(v_ref_space_pos.x / _div);	}
					else										{	_div_x = floor(v_ref_space_pos.x / _div);	};
					
					if (fract(v_ref_space_pos.y / _div) > 0.5)	{	_div_y = ceil(v_ref_space_pos.y / _div);	}
					else										{	_div_y = floor(v_ref_space_pos.y / _div);	};
					
					if (fract(v_ref_space_pos.z / _div) > 0.5)	{	_div_z = ceil(v_ref_space_pos.z / _div);	}
					else										{	_div_z = floor(v_ref_space_pos.z / _div);	};
					
					
					vec3 _local_dirvec = vec3(	_div_x*_div - v_ref_space_pos.x,	_div_y*_div  - v_ref_space_pos.y,	_div_z*_div  - v_ref_space_pos.z	);
					float _len = length(_local_dirvec);
					if (_len > (_div/2.)	)	{_normal_displace = _local_dirvec;}
					else
						{
							if (_len > (_div/4.)	)	{_normal_displace = -_local_dirvec;}
							else						{_normal_displace = _local_dirvec;}
						}
					
					if (	_normal_displace.z < 0.5	)	{	_normal_displace.z = 1.;	};
				};
#endregion

#region		//(is_material == 5.)
			if  (	(is_material == 5.)	||	(is_material == 105.)	)//first noisy material
				{
					//v_ref_space_pos, obj_hash,	v_vTexcoord
					float _div = 32.;
					float _nearest_x1 = 0.;	float _nearest_y1 = 0.;	float _nearest_z1 = 0.;
					
					float _div_x = 0.;	float _div_y = 0.;	float _div_z = 0.;
					
					if (fract(v_ref_space_pos.x / _div) > 0.5)	{	_div_x = ceil(v_ref_space_pos.x / _div);	}
					else										{	_div_x = floor(v_ref_space_pos.x / _div);	};
					
					if (fract(v_ref_space_pos.y / _div) > 0.5)	{	_div_y = ceil(v_ref_space_pos.y / _div);	}
					else										{	_div_y = floor(v_ref_space_pos.y / _div);	};
					
					if (fract(v_ref_space_pos.z / _div) > 0.5)	{	_div_z = ceil(v_ref_space_pos.z / _div);	}
					else										{	_div_z = floor(v_ref_space_pos.z / _div);	};
					
					
					vec3 _local_dirvec = vec3(	_div_x*_div - v_ref_space_pos.x,	_div_y*_div  - v_ref_space_pos.y,	_div_z*_div  - v_ref_space_pos.z	);
					float _len = floor(length(_local_dirvec)/4.);
					if (	mod(_len,2.) == 0.	)	{_normal_displace = _local_dirvec;}
					else							{_normal_displace = -_local_dirvec;}
					
					if (	_normal_displace.z < 0.5	)	{	_normal_displace.z = 1.;	};
					
				};
#endregion

#region		//(is_material == 6.)
			if  (	(is_material == 6.)	||	(is_material == 106.)	)//first noisy material
				{
					//v_ref_space_pos, obj_hash,	v_vTexcoord
					float _div = 32.;
					float _nearest_x1 = 0.;	float _nearest_y1 = 0.;	float _nearest_z1 = 0.;
					
					float _div_x = 0.;	float _div_y = 0.;	float _div_z = 0.;
					
					if (fract(v_ref_space_pos.x / _div) > 0.5)	{	_div_x = ceil(v_ref_space_pos.x / _div);	}
					else										{	_div_x = floor(v_ref_space_pos.x / _div);	};
					
					if (fract(v_ref_space_pos.y / _div) > 0.5)	{	_div_y = ceil(v_ref_space_pos.y / _div);	}
					else										{	_div_y = floor(v_ref_space_pos.y / _div);	};
					
					if (fract(v_ref_space_pos.z / _div) > 0.5)	{	_div_z = ceil(v_ref_space_pos.z / _div);	}
					else										{	_div_z = floor(v_ref_space_pos.z / _div);	};
					
					
					vec3 _local_dirvec = vec3(	_div_x*_div - v_ref_space_pos.x,	_div_y*_div  - v_ref_space_pos.y,	_div_z*_div  - v_ref_space_pos.z	);
					
					if (	abs(_local_dirvec.x) > _div*.45	)	{_normal_displace = _local_dirvec;};	
					if (	abs(_local_dirvec.y) > _div*.45	)	{_normal_displace = _local_dirvec;};
					if (	abs(_local_dirvec.z) > _div*.45	)	{_normal_displace = _local_dirvec;};
					
					if (	_normal_displace.z < 0.5	)	{	_normal_displace.z = 1.;	};
					
				};
#endregion

#region		//(is_material == 7.)
			if  (	(is_material == 7.)	||	(is_material == 107.)	)//first noisy material
				{
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
				};
#endregion

#region		//(is_material == 8.)
			if  (	(is_material == 8.)	||	(is_material == 108.)	)//first noisy material
				{
					//v_ref_space_pos, obj_hash,	v_vTexcoord
					float _div = 32.;
					
					float _initx = floor(v_ref_space_pos.x / _div)*_div;
					float _inity = floor(v_ref_space_pos.y / _div)*_div;
					float _initz = floor(v_ref_space_pos.z / _div)*_div;
					
					vec3 _refarr[8];
					for(int  _ii = 0; _ii < 8; _ii ++)
						{
							float _numA = mod(float(_ii)*197.,23.);
							float _numB = mod(float(_ii)*223.,19.);
							float _numC = mod(float(_ii)*307.,37.);
							
							//float _rndA = returnRandom(_initx + _numA,3.)/8.-63.;
							//float _rndB = returnRandom(_inity + _numB,3.)/8.-63.;
							//float _rndC = returnRandom(_initz + _numC,3.)/8.-63.;
							
							float _rndA = returnRandom(_initx + _numA,2.)/3.-16.;
							float _rndB = returnRandom(_inity + _numB,2.)/3.-16.;
							float _rndC = returnRandom(_initz + _numC,2.)/3.-16.;
							
							if (_ii < 2)	{	_refarr[_ii] = vec3(_initx + _rndA,	_inity + _rndB, _initz + _rndC);	}
							else
								{
									if (_ii < 5)	{	_refarr[_ii] = vec3(_initx + _rndB,	_inity + _rndC, _initz + _rndA);	}
									else			{	_refarr[_ii] = vec3(_initx + _rndC,	_inity + _rndA, _initz + _rndB);	}
								}
							
						}
					vec3 _nearest = vec3(0.,0.,0.);
					float _sh_len = 9999.;
					for(int _ii = 0; _ii < 8; _ii ++)
						{
							vec3 _testme = 	_refarr[_ii];
							vec3 _ntvec = vec3(_testme.x - v_ref_space_pos.x,_testme.y - v_ref_space_pos.y,_testme.z - v_ref_space_pos.z);
							float _ntlen = length(_ntvec);
							if (_ntlen < _sh_len)
								{
									_nearest = _testme;
									_sh_len = _ntlen;
								}
						}
					
					
					vec3 _local_dirvec = vec3(	_nearest.x - v_ref_space_pos.x,	_nearest.y  - v_ref_space_pos.y,	_nearest.z  - v_ref_space_pos.z	);
					_local_dirvec =  normalize(_local_dirvec);
					_local_dirvec.z *= -1.;
					
					if (dot(_normal_displace,_local_dirvec) > .5)
						{
							_local_dirvec.x += (returnRandom(_initx,1.)-5.)*.3;
							_local_dirvec.y += (returnRandom(_inity,1.)-5.)*.3;
							_local_dirvec.z -= (returnRandom(_inity,1.)-5.)*.3;
						}
					_normal_displace = _local_dirvec;
					
					if (	_normal_displace.z < 0.5	)	{	_normal_displace.z = 1.;	};
					
				};
#endregion
#region		
			if (	(is_material == 10.)	||	(is_material == 110.)	)//cros shading try
				{
					_normal_displace = noiseColor(vec3(_normal_displace.r,_normal_displace.g,_normal_displace.b),0.001,1.);
				};
#endregion		

		}
	else
		{
			if	(normal_texture_set < 0.)
				{
					_take_normal_displace = texture2D(tex_normal_std,v_vTexcoord);
				}
			else	{	_take_normal_displace = texture2D(normal_texture,v_vTexcoord);};
			_take_normal_displace -=0.5;	_take_normal_displace *2.;
			
			_normal_displace = vec3(_take_normal_displace.x,_take_normal_displace.y,_take_normal_displace.z);	
		};
	
	
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
	
	if (	(color_texture_set < 0.)	&&	(is_material != 9.)	&&	(is_material != 109.)	)
		{
			vec4 _source_color = texture2D(tex_color_std,	vec2(v_vTexcoord.x/4.,v_vTexcoord.y/4.)	);
			
			v_vTex_x = floor(abs((NdotL*2.)-6.));
			vec3 _result_color1 = texture2D(tex_color_std,	vec2(	(v_vTexcoord.x/4.) + .25 * v_vTex_x,	(v_vTexcoord.y/4.) + .25 * v_vTex_y		)	).rgb;
			_result_color1 = vec3(
									_result_color1.r + _source_color.r - _base_color.r,
									_result_color1.g + _source_color.g - _base_color.g,
									_result_color1.b + _source_color.b - _base_color.b
									);
			NdotL /= 3.;
			vec3 _result_color2 =	vec3(
									_result_color1.r * NdotL,
									_result_color1.g * NdotL,
									_result_color1.b * NdotL
								);
			_result_color = mix(_result_color1,_result_color2,_shd_mix);
		}
	else
		{
			NdotL /= 3.;
			_result_color =	vec3(
									_base_color.r * NdotL,
									_base_color.g * NdotL,
									_base_color.b * NdotL
								);
		};
	
	//exception discardning color
	if (draw_grid > 0.)
		{
			if (_is_grid_lineX > 0.)	{_result_color = vec3(_is_grid_lineX,_is_grid_lineY,_is_grid_lineZ);};
			if (_is_grid_lineY > 0.)	{_result_color = vec3(_is_grid_lineX,_is_grid_lineY,_is_grid_lineZ);};
			if (_is_grid_lineZ > 0.)	{_result_color = vec3(_is_grid_lineX,_is_grid_lineY,_is_grid_lineZ);};
		}
		
	_result_color = clamp(_result_color,vec3(0.0), vec3(1.0));
	
	//hash selected obj
	if (chosen_obj_hash == obj_hash)
		{
			float _mix = abs(sin(	(game_time + v_WorldPosition.x + v_WorldPosition.y + v_WorldPosition.z) * 0.05	));
			_mix = clamp(_mix,0.,.5);
			float _mixR = abs(cos(	(game_time + v_WorldPosition.x + v_WorldPosition.y - v_WorldPosition.z) * 0.07	));
			float _mixG = abs(sin(	(game_time + v_WorldPosition.x - v_WorldPosition.y + v_WorldPosition.z) * 0.08	));
			float _mixB = abs(cos(	(game_time - v_WorldPosition.x + v_WorldPosition.y + v_WorldPosition.z) * 0.09	));
			_result_color = mix(_result_color,vec3(_mixR,_mixG,_mixB),_mix);
		}
	//hash selected obj
	
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
	gl_FragData[2] = vec4(v_DistanceToCamera,obj_hash,obj_part_num,1.);
	gl_FragData[3] = vec4(v_WorldPosition.x,v_WorldPosition.y,v_WorldPosition.z,1.);
}
