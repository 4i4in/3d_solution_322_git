function exe_render3d_combined_model_material(_current_cam,_model,_shd_settings,_culling)
{
	if _model == -1	{exit;};
	switch(_culling)
		{
			case "cc": 	gpu_set_cullmode(cull_clockwise); break;
			case "nc": 	gpu_set_cullmode(cull_noculling); break;
			case "ac": 	gpu_set_cullmode(cull_counterclockwise); break;
		}
	
	surface_copy(_current_cam.temp_surf_depth,0,0,_current_cam.surf_depth);
	
	shader_set(shd_3d_02);
	surface_set_target_ext(0, _current_cam.surf_color);		//color,normal,NdotLight
	surface_set_target_ext(1, _current_cam.surf_normals);	//shading croshatch,	material
	surface_set_target_ext(2, _current_cam.surf_depth);		//distance_cam, hash, partnumber
	surface_set_target_ext(3, _current_cam.surf_xyz);		//xyz position
	
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "game_time"), game_time);	
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "seed"), gpu_rnd_seed);	
	
	//standard textures:
	texture_set_stage(shader_get_sampler_index(shd_3d_02,"tex_normal_std"),tex_normal_std);
	texture_set_stage(shader_get_sampler_index(shd_3d_02,"tex_color_std"),tex_color_std);
	texture_set_stage(shader_get_sampler_index(shd_3d_02,"tex_g_buff"),surface_get_texture(_current_cam.temp_surf_depth));
	
	texture_set_stage(shader_get_sampler_index(shd_3d_02,"tex_rnd_noise"),sprite_get_texture(tex_rnd_noise,0));
	
	//grid in shader
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "draw_grid"), _current_cam.shader_draw_grid[0]);
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "gridSpacingX"), _current_cam.shader_draw_grid[1]);
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "gridSpacingY"), _current_cam.shader_draw_grid[2]);
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "gridSpacingZ"), _current_cam.shader_draw_grid[3]);
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "gridXtreshold"), _current_cam.shader_draw_grid[4]);
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "gridYtreshold"), _current_cam.shader_draw_grid[5]);
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "gridZtreshold"), _current_cam.shader_draw_grid[6]);
	
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "gridXshift"), _current_cam.shader_draw_grid[7]);
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "gridYshift"), _current_cam.shader_draw_grid[8]);
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "gridZshift"), _current_cam.shader_draw_grid[9]);
	
	shader_set_uniform_f_array(	shader_get_uniform(shd_3d_02, "_sol_vec"), _current_cam.shader_sol_pos);
	shader_set_uniform_f_array(	shader_get_uniform(shd_3d_02, "_sol_col"), _current_cam.shader_sol_col);
	
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "_shd_mix"), _current_cam.shader_shade_mix[0]);
	
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "chosen_obj_hash"), -1.);
																			
	
	//==================
	
	switch(menus.graphic_control.split_screen)
		{
			case "none":
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "dgw"), 1.0/(dgw/2));
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "dgh"), 1.0/(dgh/2));
				break;
			case "vertical":
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "dgw"), 1.0/(dgw/4));
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "dgh"), 1.0/(dgh/2));		
				break;
			case "horizontal":
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "dgw"), 1.0/(dgw/2));
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "dgh"), 1.0/(dgh/4));		
				break;
		}
	var camera1 = camera_get_active();
	camera_set_view_mat(camera1, _current_cam.CamMatLookat);
	camera_set_proj_mat(camera1, _current_cam.ProjCamMat);
	//camera_set_proj_mat(camera1, matrix_build_projection_ortho(dgw, dgh, 0., 10000.0));
	camera_apply(camera1);


	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "obj_hash"), _shd_settings[2]);
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "obj_part_num"), 0.);	

	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "normal_texture_set"), -1.);
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "color_texture_set"), -1.);
	
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "is_material"), _shd_settings[0]);
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "rotate_vbuff"), 0.);
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "msm"), _shd_settings[1]);//material scale multipler
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "pos_ref_abs"), 1.);//material refer to abs or obj
	
	try
		{
			exe_submit_biome_to_world(_model,-1,0,0,0,0,0,0,1);
		}
	catch(_)
		{
			//need logfile
		};
		
	surface_reset_target();
	shader_reset();
	
	matrix_set(matrix_world, matrix_build_identity());
}