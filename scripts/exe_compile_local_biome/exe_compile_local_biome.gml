function exe_compile_local_biome(_biome_paints_in_range,_valid_biome)
{
	var _biome_array = [];
	var _bpl = menus.world_control_menu._biome_paint_list;
	for(var _ii = 0; _ii < array_length(_biome_paints_in_range); _ii++)
		{	
			var _ref = _biome_paints_in_range[_ii];
			var _c_bpl = menus.world_control_menu._biome_paint_list[_ref];
			
			var _c_biome_arr = _c_bpl[2][3];
			for(var _cc = 0; _cc < array_length(_c_biome_arr);_cc++)
				{
					var _biome_ref = _c_biome_arr[_cc];
					var _load_biome_from_ref = reference_struct.biome_paints_lists[$ _biome_ref];
					if _load_biome_from_ref[0][0] == _valid_biome
						{			
							for(var _bv = 1; _bv < array_length(_load_biome_from_ref);_bv++)//value 0 is ref for biome dot exe_biome_paints_lists
								{
									array_push(_biome_array,_load_biome_from_ref[_bv]);
								}
						}
				}
		}
	return(_biome_array);
}