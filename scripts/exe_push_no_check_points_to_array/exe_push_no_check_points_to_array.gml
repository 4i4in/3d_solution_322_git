function exe_push_no_check_points_to_array(_source_list,_add_list)
{
	for(var _i = 0; _i < array_length(_add_list); _i++)
		{
			var _pil = _add_list[_i];
			array_push(_source_list,_pil);
		}
	
	return(_source_list);
}