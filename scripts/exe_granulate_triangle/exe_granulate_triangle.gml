function exe_granulate_triangle(_triangle_here,_granulation)
{
	var _p1 = _triangle_here[0];
	var _p2 = _triangle_here[1];
	var _p3 = _triangle_here[2];
	
	var _dir_1to2 = [_p1[0]-_p2[0],_p1[1]-_p2[1],_p1[2]-_p2[2]];
	var _l_1to2 = vec_length(_dir_1to2);
	_dir_1to2 = vec_normalize(_dir_1to2);
	_dir_1to2 = vec_mul(_dir_1to2,-_granulation);
	
	var _dir_1to3 = [_p1[0]-_p3[0],_p1[1]-_p3[1],_p1[2]-_p3[2]];
	var _l_1to3 = vec_length(_dir_1to3);
	_dir_1to3 = vec_normalize(_dir_1to3);
	_dir_1to3 = vec_mul(_dir_1to3,-_granulation);
	
	var _dir_2to3 = [_p2[0]-_p3[0],_p2[1]-_p3[1],_p2[2]-_p3[2]];
	var _l_2to3 = vec_length(_dir_2to3);
	_dir_2to3 = vec_normalize(_dir_2to3);
	_dir_2to3 = vec_mul(_dir_2to3,-_granulation);
	
	var _all_points = [];
	var _line_points_1to2 = exe_return_point_line_by_steps(_p1,_l_1to2,_dir_1to2,_granulation,1);
	var _line_points_1to3 = exe_return_point_line_by_steps(_p1,_l_1to3,_dir_1to3,_granulation,1);
	var _line_points_2to3 = exe_return_point_line_by_steps(_p2,_l_2to3,_dir_2to3,_granulation,1);

	var _points_area_1t2_1t3 = exe_return_point_area_by_steps(_line_points_1to2,_line_points_1to3,_granulation);	
	_all_points = exe_push_to_noclone_points_to_array(_all_points,_points_area_1t2_1t3);
	var _points_area_1t3_2t3 = exe_return_point_area_by_steps(_line_points_1to3,_line_points_2to3,_granulation);
	_all_points = exe_push_to_noclone_points_to_array(_all_points,_points_area_1t3_2t3);
	
	return(_all_points);
}