function exe_grab_dynamic_array_base_only_by_click(_carry)
{
	var _t1 = current_time;
	
	exe_recover_original_worlds_setting();
	
	map3d.all_dynamic_colider_arr = exe_create_dynamic_colider_array_v2();
	
	//TBD
	//this must be limited to affected chunks
	map3d.map_part_dynamic_colider_arr = exe_create_map_part_colider_arr("dynamic");
	
	var _t2 = current_time;
	map3d.dynamic_colider_build_time = _t2 -_t1;
	
	reset_current_menu_array = 1;
}