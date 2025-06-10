function exe_push_to_noclone_points_to_array(_source_list,_add_list)
{
	for(var _i = 0; _i < array_length(_add_list); _i++)
		{
			var _found = 0;
			var _pil = _add_list[_i];
			for(var _j = 0; _j < array_length(_source_list); _j++)
				{
					if _found > 0 {_found = 1;break;};
					var _pis = _source_list[_j];
					if _pil[0] == _pis[0]	&&	_pis[1] == _pis[1]	&&	_pil[2] == _pis[2]
						{_found = 1;};
				}
			if _found < 1	{	array_push(_source_list,_pil);	}
		}
	
	return(_source_list);
}