function exe_perform_door1_closing_cycle(_obj,_posMat,_main_id)
{
	if struct_exists(_obj.control_method, "anim_stack")
		{
			var _anim_in_this_cycle = exe_return_is_anim_in_this_cycle(_obj);
			if _anim_in_this_cycle < 0	{_obj = exe_given_pose_anim_in_cycle(_obj,0);}
			else if _obj.control_method.anim_stack[1] < 1
				{
					var _end_of_cycle = exe_return_anim_cycle_end(_obj);
					if _end_of_cycle > 0
						{
							_obj.control_method.ground_state = "open";
							_obj.control_method.behaviour_cycle = "awaiting";
						}
					else
						{
							_obj = exe_next_pose_anim_next_in_cycle(_obj,0);
						}
				}
		}
	else	{	_obj = exe_next_pose_anim_next_in_cycle(_obj,0);	}
	
	return(_obj)
}