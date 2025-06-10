function exe_return_bigchunk_reference(_obj)
{
	var _bigchunk_x = floor(	_obj.part_vsubmit[0][0]	/	map3d.world_map_bigchunks.single_bigchunk_shift	);
	var _bigchunk_y = floor(	_obj.part_vsubmit[0][1]	/	map3d.world_map_bigchunks.single_bigchunk_shift	);
	var _bigchunk_z = floor(	_obj.part_vsubmit[0][2]	/	map3d.world_map_bigchunks.single_bigchunk_shift	);

	var _val = [_bigchunk_x,_bigchunk_y,_bigchunk_z];
	struct_set(_obj.character_sheet, "bigchunk_pos",	_val)
	return(_obj);
}