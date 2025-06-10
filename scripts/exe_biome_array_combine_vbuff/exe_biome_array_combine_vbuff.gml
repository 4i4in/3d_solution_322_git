function exe_biome_array_combine_vbuff(_carry)
{
	var _t1 = current_time;

	if array_length(draw_3d_biomes_array) > 0
		{
			exe_try_catch_delete_vbuff(vb_combined_biome);//just in case delete previous vbuff
			vb_combined_biome = -1;
			vb_combined_biome = vertex_create_buffer();
			vertex_begin(vb_combined_biome,vformat);
				//stacking biome vbuffs
				for(var _ii = 0; _ii < array_length(draw_3d_biomes_array); _ii++)
					{
						var _x = draw_3d_biomes_array[_ii][0][0];
						var _y = draw_3d_biomes_array[_ii][0][1];
						var _z = draw_3d_biomes_array[_ii][0][2];
					
						var _xr =		draw_3d_biomes_array[_ii][1][0];
						var _yr =		draw_3d_biomes_array[_ii][1][1];
						var _zr =		draw_3d_biomes_array[_ii][1][2];
						var _scale =	draw_3d_biomes_array[_ii][1][3];
					
						var _vbuff_source =	draw_3d_biomes_array[_ii][2];		
						var _push_pos = [0,0,0,	180,0,0,	1,1,1];
						var _posMat = exe_return_initial_posMat(_push_pos);
						_posMat = matrix_multiply(matrix_build(0, 0, 0,_xr,_yr,_zr,	1, 1, 1), _posMat);
						_posMat = exe_matrix_orthonormalize(_posMat);
						var _biome_part_vsubmit = exe_return_v_submit(_posMat,1);
			
						var _new_buff_here = buffer_create_from_vertex_buffer(_vbuff_source, buffer_fixed,1);

						_new_buff_here = exe_openbuffer_scale(_new_buff_here,_scale);
						_new_buff_here = exe_openbuffer_rotate(_new_buff_here,_biome_part_vsubmit);
						_new_buff_here = exe_openbuffer_translate(_new_buff_here,_x,_y,_z);
			
						exe_add_buffer_to_vbuff(_new_buff_here,vb_combined_biome);
						buffer_delete(_new_buff_here);
						
					}
				//stacking obj decorations biome
				for(var _ii = 0; _ii < array_length(map3d.static_objects); _ii++)
					{
						var _obj3d = map3d.static_objects[_ii];
						for(var _part = 0; _part < array_length(_obj3d.part_naming); _part++)
							{
								var _part_name =			_obj3d.part_naming[_part];
								var _name_ok = 0;
								if _part_name == "decorations"				{_name_ok = 1;};
								if string_starts_with(_part_name,"leaves_")	{_name_ok = 2;};
								if _name_ok > 0
									{
										var _part_vbuff_load_reference =			_obj3d.part_vbuff_load_reference[_part];
										var _part_texture_shader_setings =			_obj3d.part_texture_shader_setings[_part];
										if _part_vbuff_load_reference[0] != "vbuff_empty"
											{
												var _texture_ok = 0;
												if _part_texture_shader_setings[0] == 101	&&	_part_texture_shader_setings[1] == 5	{_texture_ok = 1;};
												if _name_ok == 2	{_texture_ok = 1;};
												if _texture_ok > 0
													{
														var _vbuff_source = _obj3d.part_show_curent[_part];
														var _new_buff_here = buffer_create_from_vertex_buffer(_vbuff_source, buffer_fixed,1);
														
														var _x = _obj3d.part_posMat[0][12];	
														var _y = _obj3d.part_posMat[0][13];
														var _z = _obj3d.part_posMat[0][14];
														_new_buff_here = exe_openbuffer_translate(_new_buff_here,_x,_y,_z);
														
														exe_add_buffer_to_vbuff(_new_buff_here,vb_combined_biome);
														buffer_delete(_new_buff_here);
														exe_try_catch_delete_vbuff(_vbuff_source);
														
														var _part_items = reference_struct[$ _obj3d.character_sheet.items_swaps][$ _part_name];
														var _sgn_part_items = struct_get_names(_part_items);
														var _keep_part = "vbuff_empty";
														//find_current
														for(var _inum = 0; _inum < array_length(_sgn_part_items); _inum++)
															{
																var _part_here = _part_items[$ _sgn_part_items[_inum]];
																if _part_here.show[0] == _obj3d.part_vbuff_load_reference[_part][0]
																	{
																		if _part_here.colider[0] == _obj3d.part_vbuff_colider_load_reference[_part][0]
																			{
																				_keep_part = string(_sgn_part_items[_inum]);	break;
																			}
																	}
															}
														//swap to empty
														for(var _inum = 0; _inum < array_length(_sgn_part_items); _inum++)
															{
																if string(_sgn_part_items[_inum]) == "vbuff_empty"
																	{
																		var _new_part = _part_items[$ _sgn_part_items[_inum]];
																		exe_vbuff_item_in_objcet_change(["static_objects",_ii,_part,_new_part,0]);
																		break;
																	}
															}
														//add recovery info to obj
														if struct_get(_obj3d,"recovery_info") == undefined	{	struct_set(_obj3d, "recovery_info",	[]	);	};
														//var _recovery_arr = _obj3d.recovery_info;
														
														var _recovery_pack =	[
																					"exe_biome_array_combine_vbuff",//function causing recovery
																					_part_name,//refered part
																					_keep_part//original part
																				];
														array_push(_obj3d.recovery_info,_recovery_pack);			
													};
											}
									}
							}
					}
			vertex_end(vb_combined_biome);
			exe_temporary_save_vbuff([vb_combined_biome,"vb_combined_biome","no_temp"]);
			vertex_freeze(vb_combined_biome);
		}
	draw_3d_biomes_array = [];
	var _t2 = current_time;
	menus.world_control_menu._biome_vbuff_build_time = _t2 -_t1;
}