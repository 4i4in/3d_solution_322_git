function exe_perform_activator_sequence(_obj)
{
	if game_time mod 1 != 0	{return(_obj);};//TBD when to check by some body_measures
	
	_obj = exe_perform_colisions_on_obj(_obj,["pushback","any",0,"activator"]);
	var _any_colision_activator = exe_temp_check_if_any_colisions(_obj,"pushback");
	if _any_colision_activator > 0	
		{
			for(var _thlprs = 0; _thlprs < array_length(_obj.part_detector_lines_results);	_thlprs++)
				{
					if array_length(_obj.part_detector_lines_results[_thlprs][2]) > 0
						{
							var _hash_colided = _obj.part_detector_lines_results[_thlprs][2][0][3];
							var _nn =  exe_find_arr_num_by_hash("controlable_objects",_hash_colided);
							if _nn > -1		
								{
									var _slave_obj = map3d.controlable_objects[_nn];
									if struct_exists(_slave_obj.character_sheet, "body_measures")
										{
											if struct_exists(_slave_obj.character_sheet.body_measures, "activator_resolving_mode")
												{
													switch(_slave_obj.character_sheet.body_measures.activator_resolving_mode)
														{
															case "basic_1_auto":
																_obj = exe_perform_basic_1_activation_on(_slave_obj,_nn,_obj);
																break;
															case "gfield_enforce":
																_obj = exe_perform_gfield_enforce_activation_on(_slave_obj,_nn,_obj);
																break;
														}
												}
										}
								};
							//return(_obj);//breaking loop searching for another activators
						}
				}
		}
		
	return(_obj);
}