function exe_postproces_shd_blur_distance_2sqr(_current_cam)
{
	
	//prepare fake blur dist
	var _temp_surf_color_2 = surface_create(surface_get_width(_current_cam.surf_postproces_colors)/2,surface_get_height(_current_cam.surf_postproces_colors)/2);
	var _temp_surf_color_4 = surface_create(surface_get_width(_current_cam.surf_postproces_colors)/4,surface_get_height(_current_cam.surf_postproces_colors)/4);
	var _temp_surf_color_8 = surface_create(surface_get_width(_current_cam.surf_postproces_colors)/8,surface_get_height(_current_cam.surf_postproces_colors)/8);
	
	surface_set_target(_temp_surf_color_2);
	draw_surface_ext(_current_cam.surf_postproces_colors, 0, 0, 0.5, 0.5, 0, -1, 1);
	surface_reset_target();
	
	surface_set_target(_temp_surf_color_4);
	draw_surface_ext(_current_cam.surf_postproces_colors, 0, 0, 0.25, 0.25, 0, -1, 1);
	surface_reset_target();
	
	surface_set_target(_temp_surf_color_8);
	draw_surface_ext(_current_cam.surf_postproces_colors, 0, 0, 0.125, 0.125, 0, -1, 1);
	surface_reset_target();
	//===============
	
	
	surface_set_target(_current_cam.surf_postproces);
	
	shader_set(shd_blur_distance_02sqr);
	
	switch(menus.graphic_control.split_screen)
		{
			case "none":
			shader_set_uniform_f(	shader_get_uniform(shd_blur_distance_02sqr, "dgw"), 1.0/(dgw/1));
			shader_set_uniform_f(	shader_get_uniform(shd_blur_distance_02sqr, "dgh"), 1.0/(dgh/1));	
				break;
			case "vertical":
			shader_set_uniform_f(	shader_get_uniform(shd_blur_distance_02sqr, "dgw"), 1.0/(dgw/2));
			shader_set_uniform_f(	shader_get_uniform(shd_blur_distance_02sqr, "dgh"), 1.0/(dgh/1));			
				break;
			case "horizontal":
			shader_set_uniform_f(	shader_get_uniform(shd_blur_distance_02sqr, "dgw"), 1.0/(dgw/1));
			shader_set_uniform_f(	shader_get_uniform(shd_blur_distance_02sqr, "dgh"), 1.0/(dgh/2));		
				break;
		}
	
	shader_set_uniform_f(	shader_get_uniform(shd_blur_distance_02sqr, "_check_distance_limit"), _current_cam.shader_blur_distance[2]);
	
	texture_set_stage(	shader_get_sampler_index(shd_blur_distance_02sqr,"surf_color")	,surface_get_texture(_current_cam.surf_postproces_colors));
	texture_set_stage(	shader_get_sampler_index(shd_blur_distance_02sqr,"surf_color_2")	,surface_get_texture(_temp_surf_color_2));
	texture_set_stage(	shader_get_sampler_index(shd_blur_distance_02sqr,"surf_color_4")	,surface_get_texture(_temp_surf_color_4));
	texture_set_stage(	shader_get_sampler_index(shd_blur_distance_02sqr,"surf_color_8")	,surface_get_texture(_temp_surf_color_8));
	texture_set_stage(	shader_get_sampler_index(shd_blur_distance_02sqr,"surf_depth")	,surface_get_texture(_current_cam.surf_depth));
	
	if surface_exists(_current_cam.surf_postproces)	{draw_surface_ext(_current_cam.surf_postproces,0,0,1,1,0,-1,1);};
	
	
	surface_reset_target();
	shader_reset();
	
	surface_set_target(_current_cam.surf_postproces_colors);
	draw_surface_ext(_current_cam.surf_postproces, 0, 0, 0.5, 0.5, 0, -1, 1);
	surface_reset_target();
	
	surface_free(_temp_surf_color_2);
	surface_free(_temp_surf_color_4);
	surface_free(_temp_surf_color_8);
}