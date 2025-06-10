function exe_update_keep_from_bigchunk()
{
	map3d.keep_world_settings.world_sqr_size = variable_clone(map3d.world_map_bigchunks.single_bigchunk_size);
	
	map3d.keep_world_settings.world_x_start = variable_clone(map3d.world_map_bigchunks.bigchunk_x_start);
	map3d.keep_world_settings.world_y_start = variable_clone(map3d.world_map_bigchunks.bigchunk_y_start);
	map3d.keep_world_settings.world_z_start = variable_clone(map3d.world_map_bigchunks.bigchunk_z_start);
	
	map3d.keep_world_settings.chunknumber = variable_clone(	ceil(map3d.keep_world_settings.world_sqr_size /  map3d.world_settings.chunksize)	);
}