function exe_return_point_line_by_steps(_start_point,_line_length,_dir_step,_granulation,_start)
{
	var _line = [];	
	var _steps = floor(_line_length/_granulation);
	for(var _i = _start; _i < _steps; _i++)
		{
			var _np = [0,0,0];
			_np[0] = _start_point[0] + _dir_step[0]*_i;
			_np[1] = _start_point[1] + _dir_step[1]*_i;
			_np[2] = _start_point[2] + _dir_step[2]*_i;
			array_push(_line,_np);
		}
		
	return(_line);
}