function exe_return_point_area_by_steps(_pl1,_pl2,_granulation)
{
	var _point_list = [];
	if array_length(_pl1) > 0	&&	array_length(_pl2)
		{
			var _j = array_length(_pl2)-1;
			for(var _i = array_length(_pl1)-1; _i > -1; _i--)
				{
					var _p1 = _pl1[_i];
					var _p2 = _pl2[_j];
					var _dir_1to2 = [_p1[0]-_p2[0],_p1[1]-_p2[1],_p1[2]-_p2[2]];
					var _l_1to2 = vec_length(_dir_1to2);
					_dir_1to2 = vec_normalize(_dir_1to2);
					_dir_1to2 = vec_mul(_dir_1to2,-_granulation);
			
					var _line_points_1to2 = exe_return_point_line_by_steps(_p1,_l_1to2,_dir_1to2,_granulation,1);
			
					if _i > _j	{}
					else	{if _j > 0	{_j--;}	}
			
					_point_list = exe_push_to_noclone_points_to_array(_point_list,_line_points_1to2);
				}
		}
	return(_point_list);
}