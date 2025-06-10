function exe_kill_obj_vbuffs(_obj)
{
	for(var _ii = 0; _ii < array_length(_obj.part_vsubmit); _ii++)
		{
			if struct_get(_obj, "part_show_curent") != undefined
				{
					if _obj.part_show_curent[_ii] != undefined
						{
							var _kill = 1;
							if _obj.part_show_curent[_ii] == ""	{_kill = 0;};
							if _obj.part_show_curent[_ii] == "vbuff_empty"	{_kill = 0;};
							if  _kill > 0	{	exe_try_catch_delete_vbuff(_obj.part_show_curent[_ii]);	};
						}
				}
				
			if struct_get(_obj, "part_helpers_curent") != undefined
				{			
					if _obj.part_helpers_curent[_ii] != undefined
						{
							var _kill = 1;
							if _obj.part_helpers_curent[_ii] == ""	{_kill = 0;};
							if _obj.part_helpers_curent[_ii] == "vbuff_empty"	{_kill = 0;};
							if  _kill > 0	{	exe_try_catch_delete_vbuff(_obj.part_helpers_curent[_ii]);	};
						}
				}

			if struct_get(_obj, "part_colisions_curent") != undefined
				{					
					if _obj.part_colisions_curent[_ii] != undefined
						{
							var _kill = 1;
							if _obj.part_colisions_curent[_ii] == ""	{_kill = 0;};
							if _obj.part_colisions_curent[_ii] == "vbuff_empty"	{_kill = 0;};
							if  _kill > 0	{	exe_try_catch_delete_vbuff(_obj.part_colisions_curent[_ii]);	};
						}
				}
		}
	
	return(_obj);
}