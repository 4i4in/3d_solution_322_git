function exe_perform_idlepose_dynamic_colision_exception(_obj)
{
	var _exit_marker = 0;
	if array_length(_obj.control_method.anchor) > 0
		{
			if array_length(_obj.control_method.anchor[0]) > 3
				{
					_obj = exe_perform_colisions_on_obj(_obj,["dynamic_anchor","any",0,"solid"]);
					var _any_colision_anchor = exe_temp_check_if_any_colisions(_obj,"dynamic_anchor");
					if _any_colision_anchor > 0
						{
							for(var _thlprs = 0; _thlprs < array_length(_obj.part_detector_lines_results);	_thlprs++)
								{
									if array_length(_obj.part_detector_lines_results[_thlprs][2]) > 0
										{
											var _reason_for_check = _obj.part_detector_lines_results[_thlprs][4];
											switch(_reason_for_check)
												{
													case "dynamic_anchor":
														if	_obj.part_detector_lines_results[_thlprs][2][0][3] == _obj.control_method.anchor[0][2]	&&	//hash check
															_obj.part_detector_lines_results[_thlprs][2][0][7] == _obj.control_method.anchor[0][3]		//part check
															{
																//same object, same part - skip	
															}
														else
															{
																_obj = exe_perform_humanoid_sceleton_simple_anchoring_obj(_obj,_thlprs,"walk","reset",0);
																_obj = exe_resolve_behaviour_cycle_humanoid_sceleton(_obj);
																_obj = exe_move_obj_to_anchor(_obj,0);
																_exit_marker = 1;
															}
														break;
												}
										}
								}
						}
				}
		}
	return([_exit_marker,_obj]);
}