function exe_perform_humanoid_sceleton_walk_cycle(_obj,_posMat,_main_id,_inertial_translation)
{
	_obj = exe_perform_pushback_sequence_on_obj(_obj,_main_id,"light");
	
	_obj = exe_perform_colisions_on_obj(_obj,["anchor","any",0,"solid"]);
	var _any_colision_anchor = exe_temp_check_if_any_colisions(_obj,"anchor");
	
	if _any_colision_anchor < 1
		{
			if struct_exists(_obj.control_method, "anim_stack")
				{
					if _obj.control_method.anim_stack[1] < 1
						{
							var _end_of_cycle = exe_return_anim_cycle_end(_obj);
							if _end_of_cycle > 0
								{
									//no collision in walk cycle end
									_obj.control_method.behaviour_timers[0] = 0;
									_obj.control_method.ground_state = "idle";
									_obj.control_method.carry_anim_info = -1;
									_obj = exe_resolve_behaviour_cycle_humanoid_sceleton(_obj);
								}
							else
								{
									_obj = exe_next_pose_anim_next_in_cycle(_obj,0);
								}
						}
				}
			else	{	_obj = exe_next_pose_anim_next_in_cycle(_obj,0);	}
			_obj = exe_move_obj_to_anchor(_obj,_main_id);
		}
	if _any_colision_anchor > 0
		{
			for(var _thlprs = 0; _thlprs < array_length(_obj.part_detector_lines_results);	_thlprs++)
				{
					if array_length(_obj.part_detector_lines_results[_thlprs][2]) > 0
						{
							var _reason_for_check = _obj.part_detector_lines_results[_thlprs][4];
							switch(_reason_for_check)
								{
									case "anchor":
										_obj = exe_perform_humanoid_sceleton_simple_anchoring_obj(_obj,_thlprs,"walk","reset",_main_id);
										
										_obj = exe_resolve_behaviour_cycle_humanoid_sceleton(_obj);
										_obj = exe_move_obj_to_anchor(_obj,_main_id);
										break;
								}
						}
				}
			
		}
	_obj = exe_perform_reanchor(_obj,_main_id);
	_obj = exe_resolve_humanoid_controls("walk",_obj,_main_id);
	
	return(_obj)
}