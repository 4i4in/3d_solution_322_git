function exe_check_if_in_current_bigchunk(_obj)
{
	var _is_in_bigchunk = 0;
	
	var _obj_x = _obj.part_posMat[0][12];
	var _obj_y = _obj.part_posMat[0][13];
	var _obj_z = _obj.part_posMat[0][14];
	
	if	_obj_x > map3d.world_map_bigchunks.bigchunk_x_start	- map3d.world_map_bigchunks.single_bigchunk_size	&&
		_obj_x < map3d.world_map_bigchunks.bigchunk_x_start + map3d.world_map_bigchunks.single_bigchunk_size + map3d.world_map_bigchunks.single_bigchunk_shift
		{
			if	_obj_y > map3d.world_map_bigchunks.bigchunk_y_start	- map3d.world_map_bigchunks.single_bigchunk_size	&&
				_obj_y < map3d.world_map_bigchunks.bigchunk_y_start + map3d.world_map_bigchunks.single_bigchunk_size + map3d.world_map_bigchunks.single_bigchunk_shift
				{
					if	_obj_z > map3d.world_map_bigchunks.bigchunk_z_start	- map3d.world_map_bigchunks.single_bigchunk_size	&&
						_obj_z < map3d.world_map_bigchunks.bigchunk_z_start + map3d.world_map_bigchunks.single_bigchunk_size + map3d.world_map_bigchunks.single_bigchunk_shift
						{
							_is_in_bigchunk = 1;
						}
				}
		}
		
	return(_is_in_bigchunk);
}