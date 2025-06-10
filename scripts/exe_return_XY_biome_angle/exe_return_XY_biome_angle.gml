function exe_return_XY_biome_angle(_normal)
{
	try{
			var _n_2d_normal = vec_normalize([_normal[0],_normal[1],0]);
			var _dotx = dot_product(_n_2d_normal[0],_n_2d_normal[1],1,0);	_dotx = clamp(_dotx, -1, 1);
			var _doty = dot_product(_n_2d_normal[0],_n_2d_normal[1],0,1);	_doty = clamp(_doty, -1, 1);
			var _ax = floor(darccos(_dotx));	var _ay = floor(darccos(_doty));
	
			var _angle_deg = 0;
			var _quadrant = 0;
						
			if _n_2d_normal[0] >= 0	&&	_n_2d_normal[1] >= 0	{_quadrant = 1;};
			if _n_2d_normal[0] < 0	&&	_n_2d_normal[1] >= 0	{_quadrant = 2;};
			if _n_2d_normal[0] < 0	&&	_n_2d_normal[1] < 0		{_quadrant = 3;};
			if _n_2d_normal[0] >= 0	&&	_n_2d_normal[1] < 0		{_quadrant = 4;};
						
			switch(_quadrant)
				{
					case 1:	_angle_deg = _ax+90;		break;
					case 2:	_angle_deg = _ax+90;		break;
					case 3:	_angle_deg = -_ax-270;		break;
					case 4:	_angle_deg = -_ax+90;		break;
				}
		}
	catch(_)	{var	_angle_deg = "fail";};
	return(_angle_deg);
}