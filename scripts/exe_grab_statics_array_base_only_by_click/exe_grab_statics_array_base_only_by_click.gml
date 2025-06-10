function exe_grab_statics_array_base_only_by_click(_carry)
{
	var _t1 = current_time;
	
	exe_recover_original_worlds_setting();
	map3d.all_static_colider_arr = exe_create_static_colider_array_v2();
	
	
	//TBD those parts must be choosen
	map3d.map_part_static_colider_arr = exe_create_map_part_colider_arr("static");
	
	var _t2 = current_time;
	map3d.static_colider_build_time = _t2 -_t1;
	
	reset_current_menu_array = 1;
}