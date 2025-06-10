function exe_generate_biome(_carry)
{
	var _t1 = current_time;
	var _biome_point_list = [];

	for(var _ii = 0; _ii < array_length(map3d.static_objects); _ii++)
		{
			var _obj3d = map3d.static_objects[_ii];
			for(var _inbuff = 0; _inbuff < array_length(_obj3d.part_naming);_inbuff++)
				{
					var _colision_buff_here =			_obj3d.part_colisions_curent[_inbuff];
					var _colision_type =				_obj3d.part_colision_method[_inbuff];
					var _hash =							_obj3d.character_sheet.hash;
					var _part =							_obj3d.part_naming[_inbuff];
					var _translation = [	_obj3d.part_vsubmit[_inbuff][0], _obj3d.part_vsubmit[_inbuff][1], _obj3d.part_vsubmit[_inbuff][2]	];
					if _colision_type == "solid"
						{
							_biome_point_list = exe_grab_biome_triangles_from_vbuff(_biome_point_list,_colision_buff_here,_hash,_translation,_colision_type,_part);
						}
				}
		}
	draw_3d_biomes_array = _biome_point_list;
	var _t2 = current_time;
	menus.world_control_menu._biome_build_time = _t2 -_t1;
	
	reset_current_menu_array = 1;
}