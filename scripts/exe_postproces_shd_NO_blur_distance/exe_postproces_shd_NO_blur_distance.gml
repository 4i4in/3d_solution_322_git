function exe_postproces_shd_NO_blur_distance(_current_cam)
{
	surface_set_target(_current_cam.surf_postproces);
	
	shader_set(shd_NO_blur_distance_01);
	
	switch(menus.graphic_control.split_screen)
		{
			case "none":
			shader_set_uniform_f(	shader_get_uniform(shd_NO_blur_distance_01, "dgw"), 1.0/(dgw/1));
			shader_set_uniform_f(	shader_get_uniform(shd_NO_blur_distance_01, "dgh"), 1.0/(dgh/1));	
				break;
			case "vertical":
			shader_set_uniform_f(	shader_get_uniform(shd_NO_blur_distance_01, "dgw"), 1.0/(dgw/2));
			shader_set_uniform_f(	shader_get_uniform(shd_NO_blur_distance_01, "dgh"), 1.0/(dgh/1));			
				break;
			case "horizontal":
			shader_set_uniform_f(	shader_get_uniform(shd_NO_blur_distance_01, "dgw"), 1.0/(dgw/1));
			shader_set_uniform_f(	shader_get_uniform(shd_NO_blur_distance_01, "dgh"), 1.0/(dgh/2));		
				break;
		}
	
	texture_set_stage(	shader_get_sampler_index(shd_NO_blur_distance_01,"surf_color")	,surface_get_texture(_current_cam.surf_postproces_colors));

	if surface_exists(_current_cam.surf_postproces)	{draw_surface_ext(_current_cam.surf_postproces,0,0,1,1,0,-1,1);};
	
	
	surface_reset_target();
	shader_reset();
}