varying vec2 v_vTexcoord;
uniform float _hash_obj;
float encodeColor(vec3 color) 
	{
		return (floor(color.r * 255.) * 65536. +	floor(color.g * 255.)* 256. +	floor(color.b * 255.));
	}
float functionColor(vec3 color) 
	{
		float _function = 0.;
		ivec3 _in_c = ivec3(color.r * 255.,color.g * 255.,color.b * 255.);
		if (	_in_c == ivec3(255,0,0)		)	{	_function = 1.;	}//right;
		if (	_in_c == ivec3(0,229,37)	)	{	_function = 2.;	}//forward;
		if (	_in_c == ivec3(0,126,255)	)	{	_function = 3.;	}//up;
		if (	_in_c == ivec3(255,0,212)	)	{	_function = 4.;	}//left;
		if (	_in_c == ivec3(229,113,0)	)	{	_function = 5.;	}//backward;
		if (	_in_c == ivec3(229,229,0)	)	{	_function = 6.;	}//down;
		if (	_in_c == ivec3(127,0,0)		)	{	_function = 7.;	}//tilt+;
		if (	_in_c == ivec3(0,63,127)	)	{	_function = 8.;	}//pitch+;
		if (	_in_c == ivec3(0,127,21)	)	{	_function = 9.;	}//yaw+;
		if (	_in_c == ivec3(127,0,106)	)	{	_function = 10.;}//tilt-;
		if (	_in_c == ivec3(127,127,0)	)	{	_function = 11.;}//pitch-;
		if (	_in_c == ivec3(127,63,0)	)	{	_function = 12.;}//yaw-;
		
		if (	_in_c == ivec3(0,127,127)	)	{	_function = 21.;}//conector1;
		if (	_in_c == ivec3(0,255,255)	)	{	_function = 22.;}//conector2;
		if (	_in_c == ivec3(95,127,0)	)	{	_function = 23.;}//conector3;
		if (	_in_c == ivec3(191,255,0)	)	{	_function = 24.;}//conector4;
		if (	_in_c == ivec3(127,91,96)	)	{	_function = 25.;}//conector5;
		if (	_in_c == ivec3(255,182,193)	)	{	_function = 26.;}//conector6;
		if (	_in_c == ivec3(37,0,65)	)		{	_function = 27.;}//conector7;
		if (	_in_c == ivec3(75,0,130)	)	{	_function = 28.;}//conector8;
		
		if (	_in_c == ivec3(21,127,21)	)	{	_function = 29.;}//conector9;
		if (	_in_c == ivec3(37,229,37)	)	{	_function = 30.;}//conector10;
		if (	_in_c == ivec3(104,96,96)	)	{	_function = 31.;}//conector11;
		if (	_in_c == ivec3(210,193,193)	)	{	_function = 32.;}//conector12;
		if (	_in_c == ivec3(110,97,63)	)	{	_function = 33.;}//conector13;
		if (	_in_c == ivec3(220,193,63)	)	{	_function = 34.;}//conector14;
		if (	_in_c == ivec3(73,141,73)	)	{	_function = 35.;}//conector15;
		if (	_in_c == ivec3(141,224,141)	)	{	_function = 36.;}//conector16;
		return (_function);
	}
void main()
{
    vec3 _base_color = texture2D(gm_BaseTexture, v_vTexcoord).rgb;
	
	
	
	vec4 _encoded_color_surf = vec4(0.,0.,0.,1.);
	_encoded_color_surf.r =		encodeColor(_base_color);
	_encoded_color_surf.g =		_hash_obj;
	_encoded_color_surf.b =		functionColor(_base_color);
	
	gl_FragData[0] = _encoded_color_surf;
}
