function exe_postproces_shd_blur_distance(_current_cam)
{
	surface_set_target(_current_cam.surf_postproces);
	
	shader_set(shd_blur_distance_01);
	
	switch(menus.graphic_control.split_screen)
		{
			case "none":
			shader_set_uniform_f(	shader_get_uniform(shd_blur_distance_01, "dgw"), 1.0/(dgw/1));
			shader_set_uniform_f(	shader_get_uniform(shd_blur_distance_01, "dgh"), 1.0/(dgh/1));	
				break;
			case "vertical":
			shader_set_uniform_f(	shader_get_uniform(shd_blur_distance_01, "dgw"), 1.0/(dgw/2));
			shader_set_uniform_f(	shader_get_uniform(shd_blur_distance_01, "dgh"), 1.0/(dgh/1));			
				break;
			case "horizontal":
			shader_set_uniform_f(	shader_get_uniform(shd_blur_distance_01, "dgw"), 1.0/(dgw/1));
			shader_set_uniform_f(	shader_get_uniform(shd_blur_distance_01, "dgh"), 1.0/(dgh/2));		
				break;
		}
	
	
	shader_set_uniform_f(	shader_get_uniform(shd_blur_distance_01, "_treshold_dist1"), _current_cam.shader_blur_distance[1]);
	shader_set_uniform_f(	shader_get_uniform(shd_blur_distance_01, "_check_distance_limit"), _current_cam.shader_blur_distance[2]);
	shader_set_uniform_f(	shader_get_uniform(shd_blur_distance_01, "_max_blur_range"), _current_cam.shader_blur_distance[3]);
	
	texture_set_stage(	shader_get_sampler_index(shd_blur_distance_01,"surf_color")	,surface_get_texture(_current_cam.surf_postproces_colors));
	texture_set_stage(	shader_get_sampler_index(shd_blur_distance_01,"surf_depth")	,surface_get_texture(_current_cam.surf_depth));
	
	if surface_exists(_current_cam.surf_postproces)	{draw_surface_ext(_current_cam.surf_postproces,0,0,1,1,0,-1,1);};
	
	
	surface_reset_target();
	shader_reset();
	
	surface_set_target(_current_cam.surf_postproces_colors);
	draw_surface_ext(_current_cam.surf_postproces, 0, 0, 0.5, 0.5, 0, -1, 1);
	surface_reset_target();
}