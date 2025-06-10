function exe_update_bigchunk_xyz_start()
{
	map3d.world_map_bigchunks.bigchunk_x_start = (map3d.world_map_bigchunks.current_bigchunk_load[0] - 1)	*	map3d.world_map_bigchunks.single_bigchunk_shift;
	map3d.world_map_bigchunks.bigchunk_y_start = (map3d.world_map_bigchunks.current_bigchunk_load[1] - 1)	*	map3d.world_map_bigchunks.single_bigchunk_shift;
	map3d.world_map_bigchunks.bigchunk_z_start = (map3d.world_map_bigchunks.current_bigchunk_load[2] - 1)	*	map3d.world_map_bigchunks.single_bigchunk_shift;
}