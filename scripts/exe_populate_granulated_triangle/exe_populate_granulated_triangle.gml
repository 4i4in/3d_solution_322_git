function exe_populate_granulated_triangle(_triangle_here,_point_list,_biome_array,_valid_biome)
{
	var _np_list = [];
	var _normal = _triangle_here[4];
	var _hash = _triangle_here[5];
	for(var _pli = 0; _pli < array_length(_point_list); _pli++)
		{
			var _p1 = _point_list[_pli];
			var _deep_mul = menus.world_control_menu._biome_sink;
			_p1[0] -= _normal[0] * _deep_mul;	_p1[1] -= _normal[1] * _deep_mul;	_p1[2] -= _normal[2] * _deep_mul;
			
			switch(_valid_biome)
				{
					case 0:	case 4:
						var _mnum = (floor(_p1[0]) mod 23) + (floor(_p1[1]) mod 31) + (floor(_p1[2]) mod 19) 
									+ _hash + _pli*181 + floor(	abs(_normal[0])*101119 + abs(_normal[1])*101789 + abs(_normal[2])*102241	);
						var _val = exe_returnRandom(_mnum,3);
						var _xr = (_val mod 13)-7;
						var _yr = (_val mod 11)-6;
						var _zr = _val mod 360;
							
						var _mnum = (floor(_p1[0]) mod 11) + (floor(_p1[1]) mod 13) + (floor(_p1[2]) mod 17) 
									+ _hash + _pli*211 + floor(	abs(_normal[0])*85259 + abs(_normal[1])*86029 + abs(_normal[2])*86369	);
						var _val = (exe_returnRandom(_mnum,2) +50)/100;
						var _scale = _val;
							
						var _mnum = (floor(_p1[0]) mod 317) + (floor(_p1[1]) mod 307) + (floor(_p1[2]) mod 313) 
									+ _hash + _pli*241 + floor(	abs(_normal[0])*87743 + abs(_normal[1])*88423 + abs(_normal[2])*91631	);
						var _val = exe_returnRandom(_mnum,2);
							
						_val = _val mod array_length(_biome_array);
						_val = _biome_array[_val];
														
						_val = exe_return_vbuff_by_reference(_val);
							
						var _pack = [_p1,[_xr,_yr,_zr,_scale],_val];
						array_push(_np_list,_pack);
						break;
						
					case 1:	case 2:	case 3:
						var _angle_deg = exe_return_XY_biome_angle(_normal);
						if _angle_deg == "fail"	
							{	show_debug_message("fail in exe_populate_granulated_triangle case 2");	break;	};
						
						var _mnum = (floor(_p1[0]) mod 23) + (floor(_p1[1]) mod 31) + (floor(_p1[2]) mod 19) 
									+ _hash + _pli*181 + floor(	abs(_normal[0])*101119 + abs(_normal[1])*101789 + abs(_normal[2])*102241	);
						var _val = exe_returnRandom(_mnum,3);
						var _xr = (_val mod 13)-7;
						var _yr = (_val mod 13)-6;
						var _zr = _angle_deg + (_val mod 11)-5;
						
						var _mnum = (floor(_p1[0]) mod 11) + (floor(_p1[1]) mod 13) + (floor(_p1[2]) mod 17) 
									+ _hash + _pli*211 + floor(	abs(_normal[0])*85259 + abs(_normal[1])*86029 + abs(_normal[2])*86369	);
						var _val = (exe_returnRandom(_mnum,2) +50)/100;
						var _scale = _val;
							
						var _mnum = (floor(_p1[0]) mod 317) + (floor(_p1[1]) mod 307) + (floor(_p1[2]) mod 313) 
									+ _hash + _pli*241 + floor(	abs(_normal[0])*87743 + abs(_normal[1])*88423 + abs(_normal[2])*91631	);
						var _val = exe_returnRandom(_mnum,2);
							
						_val = _val mod array_length(_biome_array);
						_val = _biome_array[_val];
														
						_val = exe_return_vbuff_by_reference(_val);
							
						var _pack = [_p1,[_xr,_yr,_zr,_scale],_val];
						array_push(_np_list,_pack);
						break;
				}
		}
	return(_np_list);
}