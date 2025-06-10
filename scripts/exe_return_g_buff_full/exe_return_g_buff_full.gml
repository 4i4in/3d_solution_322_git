function exe_return_g_buff_full(_current_cam)
{
	var _gbuff_full = 0;
	var _sample_px = surface_create(1,1);
	
	surface_set_target(_sample_px);
	draw_clear_alpha(c_black,0);
	surface_reset_target();	
	
	//surface_set_target(_sample_px);
	shader_set(shd_return_g_buff_full);
	surface_set_target_ext(0, _sample_px);	
	
	shader_set_uniform_f(	shader_get_uniform(shd_return_g_buff_full, "dgw"), 1.0/(dgw/2));
	shader_set_uniform_f(	shader_get_uniform(shd_return_g_buff_full, "dgh"), 1.0/(dgh/2));
	
	texture_set_stage(shader_get_sampler_index(shd_return_g_buff_full,"tex_g_buff"),_current_cam.surf_depth);
	
	draw_point(0, 0);
	
	surface_reset_target();
	shader_reset();
	matrix_set(matrix_world, matrix_build_identity());
	
	
	var _scol = surface_getpixel(_sample_px,0,0);
show_debug_message("_scol : " + string(_scol));	
	
	
	
	surface_free(_sample_px);
	return(_gbuff_full);
}