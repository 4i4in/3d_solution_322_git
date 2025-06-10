uniform float dgw;
uniform float dgh;
uniform sampler2D tex_g_buff;
void main()
{
	//float _g_sum = 1.;
	float _g_sum = texture2D(	tex_g_buff,vec2(0.5,0.5)	).r;
	/*
	for(float _x = 0.; _x < 961.; _x += 1.)
		{
			for(float _y = 0.; _y < 541.; _y += 1.)
				{
					_g_sum *= texture2D(	tex_g_buff,vec2(_x * dgw,_y * dgh)	).a;
					//float _g_buff_ = texture2D(	tex_g_buff,vec2(_x * dgw,_y * dgh)	).r;
					//if (_g_buff_ > 0.)	{}
					//else				{	_g_sum++;	}
				}
		}
	*/
	if 	(_g_sum > .5)	{	gl_FragData[0] = vec4(0.,1.,0.,1.);	}
	else				{	gl_FragData[0] = vec4(1.,0.,0.,1.);	}
}
