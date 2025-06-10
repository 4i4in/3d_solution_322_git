function exe_kill_all_vbuffs(_temp_o)//show, helper, colider
{
	for(var _ii = 0; _ii < array_length(_temp_o.part_naming); _ii++)
		{
			exe_try_catch_delete_vbuff(_temp_o.part_show_source[_ii]);
			exe_try_catch_delete_vbuff(_temp_o.part_helpers_source[_ii]);
			exe_try_catch_delete_vbuff(_temp_o.part_colisions_source[_ii]);
			
			exe_try_catch_delete_vbuff(_temp_o.part_show_curent[_ii]);
			exe_try_catch_delete_vbuff(_temp_o.part_helpers_curent[_ii]);
			exe_try_catch_delete_vbuff(_temp_o.part_colisions_curent[_ii]);
			
		}
	return(_temp_o);
}