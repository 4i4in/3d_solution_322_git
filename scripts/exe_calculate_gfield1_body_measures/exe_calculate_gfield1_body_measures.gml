function exe_calculate_gfield1_body_measures(_obj)
{
	switch(_obj.control_method.active[1])
		{
			case "gfield_01":
				_obj.character_sheet.body_measures	= {};
				
				var _val = "gfield_enforce";//last activation, minimal difference in second to next activation * game speed
				struct_set(_obj.character_sheet.body_measures, "activator_resolving_mode",			_val	);
				
				var _val = 1.;
				struct_set(_obj.character_sheet.body_measures, "force_l",			_val	);
				
				var _val = "down";
				struct_set(_obj.character_sheet.body_measures, "f_direction",			_val	);
				
				break;
		}
	return(_obj);
}