function exe_grab_collision_statics_for_current_array()
{
	
	var _t1 = current_time;
	
	exe_recover_original_worlds_setting();
	
	if is_array(map3d.world_settings.fast_check_scheeme)	{array_delete(map3d.world_settings.fast_check_scheeme,0,array_length(map3d.world_settings.fast_check_scheeme));};
	if is_array(map3d.all_static_colider_arr)				{array_delete(map3d.all_static_colider_arr,0,array_length(map3d.all_static_colider_arr));};
	if is_array(map3d.static_colider_arr)					{array_delete(map3d.static_colider_arr,0,array_length(map3d.static_colider_arr));};
	if is_array(map3d.map_part_static_colider_arr)			{array_delete(map3d.map_part_static_colider_arr,0,array_length(map3d.map_part_static_colider_arr));};
	gc_collect();
	
	map3d.world_settings.fast_check_scheeme = [];
	map3d.static_colider_arr = -1;
	map3d.map_part_static_colider_arr = -1;
	map3d.all_static_colider_arr = -1;
	
	map3d.world_settings.fast_check_scheeme = exe_create_fast_check_scheeme_for_colisions();
	map3d.all_static_colider_arr = exe_create_static_colider_array_v2();
	map3d.static_colider_arr = map3d.all_static_colider_arr;
	map3d.map_part_static_colider_arr = exe_create_map_part_colider_arr("static");
	
	var _t2 = current_time;
	map3d.static_colider_build_time = _t2 -_t1;
}