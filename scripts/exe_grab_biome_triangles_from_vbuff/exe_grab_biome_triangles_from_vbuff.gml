function exe_grab_biome_triangles_from_vbuff(_biome_point_list,_colision_buff_here,_hash,_translation,_colision_type,_part)
{
	var _new_buff_here = buffer_create_from_vertex_buffer(_colision_buff_here, buffer_fixed,1);
	for(var _ii = 0; _ii < buffer_get_size(_new_buff_here); _ii+= (32 * 3)	)//because of triangle
		{
			var _refer_to_arr = [];
			//vert1
			var _ox = buffer_peek(_new_buff_here, _ii, buffer_f32);
			var _oy = buffer_peek(_new_buff_here, _ii +4, buffer_f32);
			var _oz = buffer_peek(_new_buff_here, _ii +8, buffer_f32);
			
			var _p1 = [_ox + _translation[0],_oy + _translation[1],_oz + _translation[2]];
			//vert2
			var _ox = buffer_peek(_new_buff_here, _ii	+32, buffer_f32);
			var _oy = buffer_peek(_new_buff_here, _ii +4+32, buffer_f32);
			var _oz = buffer_peek(_new_buff_here, _ii +8+32, buffer_f32);
			
			var _p2 = [_ox + _translation[0],_oy + _translation[1],_oz + _translation[2]];
			//vert3
			var _ox = buffer_peek(_new_buff_here, _ii	+64, buffer_f32);
			var _oy = buffer_peek(_new_buff_here, _ii +4+64, buffer_f32);
			var _oz = buffer_peek(_new_buff_here, _ii +8+64, buffer_f32);
			
			var _p3 = [_ox + _translation[0],_oy + _translation[1],_oz + _translation[2]];
			
			//sum
			var _n = vec_normalize(	vec_cross_product(	vec3d_subtract(_p2, _p1),	vec3d_subtract(_p3, _p1)	)	);
			var _tpBC = [	(_p1[0] + _p2[0] + _p3[0])/3.,	(_p1[1] + _p2[1] + _p3[1])/3.,	(_p1[2] + _p2[2] + _p3[2])/3.	];	
			var _triangle_here = [_p1,_p2,_p3,_tpBC,_n,_hash,_colision_type,_part];
			
			if _colision_type == "solid"
				{
					var _biome_paints_in_range = exe_return_paints_in_range(_triangle_here);
					if array_length(_biome_paints_in_range) > 0
						{
							//filter _granulation
							var _granulation = exe_return_local_granulation(_biome_paints_in_range);
							var _ret_arr = exe_granulate_triangle(_triangle_here,_granulation);
							//filter chance
							var _chance = exe_return_local_chance(_biome_paints_in_range);
							_ret_arr = exe_test_chance_granulated_triangle(_ret_arr,_chance);
							
							if array_length(_ret_arr) > 0//triangle have any valid points against biome chance
								{
									var _dot_div_group = exe_return_local_dot_div(_biome_paints_in_range,_n);
									var _valid_biome = exe_return_valid_biome(_dot_div_group);
									var _biome_array = exe_compile_local_biome(_biome_paints_in_range,_valid_biome);

									if array_length(_biome_array) > 0//biome includes any vbuff reference
										{
											_ret_arr = exe_populate_granulated_triangle(_triangle_here,_ret_arr,_biome_array,_valid_biome);
											_biome_point_list = exe_push_no_check_points_to_array(_biome_point_list,_ret_arr);
										}
								}
						}
				}
		}
	
	buffer_delete(_new_buff_here);
	return(_biome_point_list);
}