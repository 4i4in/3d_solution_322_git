function exe_reload_all_coliders_for_given_bigchunk(_switch_to)//[x,y,z]bigchunk num
{
	map3d.world_map_bigchunks.current_bigchunk_load = _switch_to;
							
	exe_update_bigchunk_xyz_start();
	exe_update_keep_from_bigchunk();
							
	exe_grab_collision_statics_for_current_array();
	exe_grab_collision_dynamic_for_current_array();
							
	gc_collect();
}