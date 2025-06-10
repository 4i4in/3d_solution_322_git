function exe_calc_gravity_diff_to_main(_obj)
{
	//_obj.character_sheet.body_measures.gravity_diff	is array [x,y,z,climb_pitch]
	if struct_get(_obj.character_sheet, "body_measures") != undefined
		{
			if struct_get(_obj.character_sheet.body_measures,	"gravity_diff") != undefined
				{
					
					//adjust normal vec from one from activator
					if _obj.character_sheet.body_measures.gravity_operation[0] == 1
						{
							if _obj.character_sheet.body_measures.gravity_diff[4] != 0//time stamp
								{
									var _coyotee_time = 30;
									if _obj.character_sheet.body_measures.gravity_diff[4] + _coyotee_time < game_time
										{
											_obj.character_sheet.body_measures.gravity_diff[4] = variable_clone(game_time - 2*_coyotee_time);
											_obj = exe_grab_map_gravity_vec(_obj);
										}
								}
						}
					//==============
					
					var _obj_g_vec = [_obj.control_method.gravity[0],_obj.control_method.gravity[1],_obj.control_method.gravity[2]];
					var _obj_g_vec_n = vec_normalize(_obj_g_vec);
	
					var _vec3_up =		[_obj.part_vsubmit[0][6],_obj.part_vsubmit[0][7],_obj.part_vsubmit[0][8]];
					var _vec3_forward = [_obj.part_vsubmit[0][12],_obj.part_vsubmit[0][13],_obj.part_vsubmit[0][14]];
					var _vec3_right =	[_obj.part_vsubmit[0][15],_obj.part_vsubmit[0][16],_obj.part_vsubmit[0][17]];
	
					var _dot_up_n = dot_product_3d(_obj_g_vec_n[0],_obj_g_vec_n[1],_obj_g_vec_n[2],_vec3_up[0],_vec3_up[1],_vec3_up[2]);
					var _dot_forward_n = dot_product_3d(_obj_g_vec_n[0],_obj_g_vec_n[1],_obj_g_vec_n[2],_vec3_forward[0],_vec3_forward[1],_vec3_forward[2]);
					var _dot_right_n = dot_product_3d(_obj_g_vec_n[0],_obj_g_vec_n[1],_obj_g_vec_n[2],_vec3_right[0],_vec3_right[1],_vec3_right[2]);
	
					_obj.character_sheet.body_measures.gravity_diff[0] = _dot_forward_n;
					_obj.character_sheet.body_measures.gravity_diff[1] = _dot_right_n;
					_obj.character_sheet.body_measures.gravity_diff[2] = _dot_up_n;
				}
		}
	return(_obj);
}