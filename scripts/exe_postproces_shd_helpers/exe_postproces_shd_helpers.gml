function exe_postproces_shd_helpers(_current_cam)
{
	var _temp_surf = surface_create(surface_get_width(_current_cam.surf_postproces),surface_get_height(_current_cam.surf_postproces));
	surface_copy(_temp_surf,0,0,_current_cam.surf_postproces);
	
	surface_set_target(_current_cam.surf_postproces);
	
	shader_set(shd_postproces_helpers);
	
	switch(menus.graphic_control.split_screen)
		{
			case "none":
			shader_set_uniform_f(	shader_get_uniform(shd_postproces_helpers, "dgw"), 1.0/(dgw/1));
			shader_set_uniform_f(	shader_get_uniform(shd_postproces_helpers, "dgh"), 1.0/(dgh/1));	
				break;
			case "vertical":
			shader_set_uniform_f(	shader_get_uniform(shd_postproces_helpers, "dgw"), 1.0/(dgw/2));
			shader_set_uniform_f(	shader_get_uniform(shd_postproces_helpers, "dgh"), 1.0/(dgh/1));			
				break;
			case "horizontal":
			shader_set_uniform_f(	shader_get_uniform(shd_postproces_helpers, "dgw"), 1.0/(dgw/1));
			shader_set_uniform_f(	shader_get_uniform(shd_postproces_helpers, "dgh"), 1.0/(dgh/2));		
				break;
		}
	
	texture_set_stage(	shader_get_sampler_index(shd_postproces_helpers,"surf_helpers")	,surface_get_texture(_current_cam.surf_helpers));
	texture_set_stage(	shader_get_sampler_index(shd_postproces_helpers,"surf_postproces")	,surface_get_texture(_temp_surf));
	
	shader_set_uniform_f(	shader_get_uniform(shd_postproces_helpers, "in_check_range"), _current_cam.shd_helpers[0]);
	shader_set_uniform_f(	shader_get_uniform(shd_postproces_helpers, "_step_mul"), _current_cam.shd_helpers[1]);
	
	shader_set_uniform_f(	shader_get_uniform(shd_postproces_helpers, "_func_highlite"), menus.obj_editor.gizmo_func_highlite);
	
	if surface_exists(_current_cam.surf_postproces)	{draw_surface_ext(_current_cam.surf_postproces,0,0,1,1,0,-1,1);};
	
	surface_reset_target();
	shader_reset();
	
	surface_free(_temp_surf);
}