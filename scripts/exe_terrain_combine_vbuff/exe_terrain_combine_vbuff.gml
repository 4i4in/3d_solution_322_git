function exe_terrain_combine_vbuff(_carry)
{
	var _t1 = current_time;
	
	exe_try_catch_delete_vbuff(vb_combined_terrain);//just in case delete previous vbuff
	vb_combined_terrain = -1;
	vb_combined_terrain = vertex_create_buffer();
	vertex_begin(vb_combined_terrain,vformat);
		//stacking obj decorations biome
		for(var _ii = 0; _ii < array_length(map3d.static_objects); _ii++)
			{
				var _obj3d = map3d.static_objects[_ii];
				for(var _part = 0; _part < array_length(_obj3d.part_naming); _part++)
					{
						var _part_vbuff_load_reference =			_obj3d.part_vbuff_load_reference[_part];
						var _part_texture_shader_setings =			_obj3d.part_texture_shader_setings[_part];
						
						if _part_vbuff_load_reference[0] != "vbuff_empty"
							{
								if _part_texture_shader_setings[0] == 7	//&&	_part_texture_shader_setings[1] == 1	
									{
										var _vbuff_source = _obj3d.part_show_curent[_part];
										var _new_buff_here = buffer_create_from_vertex_buffer(_vbuff_source, buffer_fixed,1);
														
										var _x = _obj3d.part_posMat[_part][12];	
										var _y = _obj3d.part_posMat[_part][13];
										var _z = _obj3d.part_posMat[_part][14];
										_new_buff_here = exe_openbuffer_translate(_new_buff_here,_x,_y,_z);
														
										exe_add_buffer_to_vbuff(_new_buff_here,vb_combined_terrain);
										buffer_delete(_new_buff_here);
										//exe_try_catch_delete_vbuff(_vbuff_source);		
									};
							}
					}
			}
	vertex_end(vb_combined_terrain);
	exe_temporary_save_vbuff([vb_combined_terrain,"vb_combined_terrain","no_temp"]);
	vertex_freeze(vb_combined_terrain);	
	var _t2 = current_time;
	menus.world_control_menu._terrain_vbuff_build_time = _t2 -_t1;
}