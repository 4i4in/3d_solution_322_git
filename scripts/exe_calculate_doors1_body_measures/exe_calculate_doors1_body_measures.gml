function exe_calculate_doors1_body_measures(_obj)
{
	switch(_obj.control_method.active[1])
		{
			case "door1":
				_obj.character_sheet.body_measures	= {};
				
				var _val = "basic_1_auto";//last activation, minimal difference in second to next activation * game speed
				struct_set(_obj.character_sheet.body_measures, "activator_resolving_mode",			_val	);
				
				var _val = [0,3];//last activation, minimal difference in second to next activation * game speed
				struct_set(_obj.character_sheet.body_measures, "sleep_time_stamp",			_val	);
				
				var _val = 0;//last activation, minimal difference in second to next activation * game speed
				struct_set(_obj.character_sheet.body_measures, "perform_action",			_val	);
				
				break;
		}
	return(_obj);
}