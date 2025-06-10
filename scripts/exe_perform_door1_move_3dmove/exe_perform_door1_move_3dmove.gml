function exe_perform_door1_move_3dmove(_obj)
{
	var _main_id = -1;
	for(var _ii = 0; _ii < array_length(_obj.part_naming); _ii++)
		{
			if _main_id > -1	{break;};
			if _obj.part_naming[_ii] == "main_part"	{_main_id = _ii;};
		}
	var _posMat = _obj.part_posMat[_main_id];

	switch(_obj.control_method.behaviour_cycle)
		{
			case "awaiting":
				_obj = exe_perform_door1_awaiting_cycle(_obj,_posMat,_main_id);//calculation cycle switch
				break;
			case "open_up_1":
				_obj = exe_perform_door1_closing_cycle(_obj,_posMat,_main_id);
				break;
			case "closed_1":
				_obj = exe_perform_door1_opening_cycle(_obj,_posMat,_main_id);
				break;
		}
	
	
	
	return(_obj);
}