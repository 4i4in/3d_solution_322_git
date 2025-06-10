function exe_fix_activator_time(_obj)
{
	if struct_exists(_obj.character_sheet, "body_measures")
		{
			if struct_exists(_obj.character_sheet.body_measures, "activator_resolving_mode")
				{
					switch(_obj.character_sheet.body_measures.activator_resolving_mode)
						{
							case "basic_1_auto":
								_obj.character_sheet.body_measures.sleep_time_stamp[0] = 0;
								break;
						}
				}
		}
		
	if struct_exists(_obj.character_sheet, "respawn_point")
		{
			_obj.character_sheet.respawn_point[3] = 0;
		}
	
	return(_obj);
}