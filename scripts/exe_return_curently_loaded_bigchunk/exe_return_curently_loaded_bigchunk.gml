function exe_return_curently_loaded_bigchunk()
{
	var _Lx = floor(map3d.keep_world_settings.world_x_start	/	map3d.world_map_bigchunks.single_bigchunk_shift)+1;
	var _Ly = floor(map3d.keep_world_settings.world_y_start	/	map3d.world_map_bigchunks.single_bigchunk_shift)+1;
	var _Lz = floor(map3d.keep_world_settings.world_z_start	/	map3d.world_map_bigchunks.single_bigchunk_shift)+1;
	
	map3d.world_map_bigchunks.current_bigchunk_load	= [_Lx,_Ly,_Lz];
	
	exe_update_bigchunk_xyz_start();
	
}