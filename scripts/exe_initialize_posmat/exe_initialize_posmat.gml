function exe_initialize_posmat(_initial_pm)
{
	var _posMat = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
	
	if _initial_pm == undefined
		{
			var _push_pos = [0,0,0,	180,0,0,	1,1,1];
			var _posMat = exe_return_initial_posMat(_push_pos);
		}
	else if array_length(_initial_pm) == 3
		{
			var _push_pos = [_initial_pm[0],_initial_pm[1],_initial_pm[2],	180,0,0,	1,1,1];
			var _posMat = exe_return_initial_posMat(_push_pos);
		}
	else if array_length(_initial_pm) == 16	{var _posMat = _initial_pm;};
	
	
	return(_posMat);
}