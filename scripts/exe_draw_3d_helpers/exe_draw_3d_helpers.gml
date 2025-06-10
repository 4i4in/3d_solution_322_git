function exe_draw_3d_helpers(_current_cam)
{
	gpu_set_cullmode(cull_clockwise);
	
	draw_3d_helpers_array = exe_prepare_3d_helpers_to_draw(_current_cam);
	
	var _temp_arr_vbuff = -1;
	
	shader_set(shd_helpers_01);
	surface_set_target_ext(0, _current_cam.surf_helpers);
	
	var camera1 = camera_get_active();
	camera_set_view_mat(camera1, _current_cam.CamMatLookat);
	camera_set_proj_mat(camera1, _current_cam.ProjCamMat);
	camera_apply(camera1);
	
	var _lts = 0;
	if menus.obj_editor.load_to_screen > 0	{_lts = 1;};
	if menus.mapeditor_control_menu.load_to_screen > 0	{_lts = 1;};
	
	for(var _ii = 0; _ii < array_length(draw_3d_helpers_array); _ii++)
		{
			var _hash = draw_3d_helpers_array[_ii][1];
			
			if menus.obj_editor.obj_hash > -1	&&	_lts > 0
				{
					if menus.obj_editor.obj_hash == _hash	&& draw_3d_helpers_array[_ii][9] == 0
						{
							if is_real(draw_3d_helpers_array[_ii][5])
								{
									var _vsub0 = -1;	var _obj_num = -1;
									_obj_num = exe_find_arr_num_by_hash("static_objects",_hash);
									if _obj_num != -1
										{	_vsub0 = map3d.static_objects[_obj_num][$ "part_vsubmit"][0];	}
									else	
										{
											_obj_num = exe_find_arr_num_by_hash("helpers_objects",_hash);
											if _obj_num != -1
												{	_vsub0 = map3d.helpers_objects[_obj_num][$ "part_vsubmit"][0];	}
										};
									
											
									var _buff_found = 0;
									switch(menus.mapeditor_control_menu.gizmo_scale[0])
										{
											case .1:	_temp_arr_vbuff = variable_clone(	exe_return_vbuff_by_reference("vbuff_dir_arrow2_x01")	);	_buff_found = 1; break;
											case .5:	_temp_arr_vbuff = variable_clone(	exe_return_vbuff_by_reference("vbuff_dir_arrow2_x05")	);	_buff_found = 1; break;
											case 1.:	_temp_arr_vbuff = variable_clone(	exe_return_vbuff_by_reference("vbuff_dir_arrow2")	);	_buff_found = 1; break;
											case 2.:	_temp_arr_vbuff = variable_clone(	exe_return_vbuff_by_reference("vbuff_dir_arrow2_x20")	);	_buff_found = 1; break;
										}
									if _buff_found < 1	{	_temp_arr_vbuff = variable_clone(	exe_return_vbuff_by_reference("vbuff_dir_arrow2")	);	};
									
									_temp_arr_vbuff = exe_rotate_buff_by_mat(_temp_arr_vbuff,		_vsub0);
									draw_3d_helpers_array[_ii][3] = _temp_arr_vbuff;
								}
							else
								{
									var _buff_found = 0;
									switch(menus.mapeditor_control_menu.gizmo_scale[0])
										{
											case .1:	draw_3d_helpers_array[_ii][3] = exe_return_vbuff_by_reference("vbuff_dir_arrow2_x01");	_buff_found = 1; break;
											case .5:	draw_3d_helpers_array[_ii][3] = exe_return_vbuff_by_reference("vbuff_dir_arrow2_x05");	_buff_found = 1; break;
											case 1.:	draw_3d_helpers_array[_ii][3] = exe_return_vbuff_by_reference("vbuff_dir_arrow2");	_buff_found = 1; break;
											case 2.:	draw_3d_helpers_array[_ii][3] = exe_return_vbuff_by_reference("vbuff_dir_arrow2_x20");	_buff_found = 1; break;
										}
									if _buff_found < 1	{	draw_3d_helpers_array[_ii][3] = exe_return_vbuff_by_reference("vbuff_dir_arrow2");	};
								}
						}
				}
			shader_set_uniform_f(	shader_get_uniform(shd_helpers_01, "_hash_obj"), _hash);	
			if is_real(draw_3d_helpers_array[_ii][5])
				{
					shader_set_uniform_f(	shader_get_uniform(shd_helpers_01, "rotate_vbuff"), 0.);
					exe_submit_to_world(draw_3d_helpers_array[_ii][3],draw_3d_helpers_array[_ii][4],draw_3d_helpers_array[_ii][5],draw_3d_helpers_array[_ii][6],draw_3d_helpers_array[_ii][7]);
				}
			else
				{
					shader_set_uniform_f(	shader_get_uniform(shd_helpers_01, "rotate_vbuff"), 1.);
					shader_set_uniform_f_array(	shader_get_uniform(shd_helpers_01, "_tm"), draw_3d_helpers_array[_ii][5]);
					
					exe_submit_to_world(draw_3d_helpers_array[_ii][3],draw_3d_helpers_array[_ii][4],0,0,0);
				}
			
		}
		
	surface_reset_target();
	shader_reset();
	matrix_set(matrix_world, matrix_build_identity());
	
	if _temp_arr_vbuff != -1	{	exe_try_catch_delete_vbuff(_temp_arr_vbuff);	};
	
}