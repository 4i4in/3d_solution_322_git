function exe_sobel_edges_2(_current_cam)
{
	
	surface_set_target(_current_cam.surf_postproces);
	
	shader_set(shd_sobeL_edge_2);
	
	switch(menus.graphic_control.split_screen)
		{
			case "none":
			shader_set_uniform_f(	shader_get_uniform(shd_sobeL_edge_2, "dgw"), 1.0/(dgw/1));
			shader_set_uniform_f(	shader_get_uniform(shd_sobeL_edge_2, "dgh"), 1.0/(dgh/1));	
				break;
			case "vertical":
			shader_set_uniform_f(	shader_get_uniform(shd_sobeL_edge_2, "dgw"), 1.0/(dgw/2));
			shader_set_uniform_f(	shader_get_uniform(shd_sobeL_edge_2, "dgh"), 1.0/(dgh/1));			
				break;
			case "horizontal":
			shader_set_uniform_f(	shader_get_uniform(shd_sobeL_edge_2, "dgw"), 1.0/(dgw/1));
			shader_set_uniform_f(	shader_get_uniform(shd_sobeL_edge_2, "dgh"), 1.0/(dgh/2));		
				break;
		}
	
	texture_set_stage(	shader_get_sampler_index(shd_sobeL_edge_2,"surf_light")	,surface_get_texture(_current_cam.surf_color));
	texture_set_stage(	shader_get_sampler_index(shd_sobeL_edge_2,"surf_material")	,surface_get_texture(_current_cam.surf_normals));
	texture_set_stage(	shader_get_sampler_index(shd_sobeL_edge_2,"surf_decoded_color")	,surface_get_texture(_current_cam.surf_postproces_colors));	
	texture_set_stage(	shader_get_sampler_index(shd_sobeL_edge_2,"surf_decoded_normal")	,surface_get_texture(_current_cam.surf_postproces_normals));
	texture_set_stage(	shader_get_sampler_index(shd_sobeL_edge_2,"surf_decoded_simple_normal")	,surface_get_texture(_current_cam.surf_postproces_simple_normals));
	texture_set_stage(	shader_get_sampler_index(shd_sobeL_edge_2,"surf_depth")	,surface_get_texture(_current_cam.surf_depth));
	texture_set_stage(	shader_get_sampler_index(shd_sobeL_edge_2,"surf_xyz")	,surface_get_texture(_current_cam.surf_xyz));
	texture_set_stage(	shader_get_sampler_index(shd_sobeL_edge_2,"surf_croshatch")	,surface_get_texture(_current_cam.surf_postproces_croshatch));
	
	shader_set_uniform_f(	shader_get_uniform(shd_sobeL_edge_2, "_check_distance_limit"), _current_cam.shader_outlines[1]);
	shader_set_uniform_f(	shader_get_uniform(shd_sobeL_edge_2, "_treshold_dist1"), _current_cam.shader_outlines[2]);
	shader_set_uniform_f(	shader_get_uniform(shd_sobeL_edge_2, "_line_thicknes_max"), _current_cam.shader_outlines[3]);
	shader_set_uniform_f(	shader_get_uniform(shd_sobeL_edge_2, "_filter_1"), _current_cam.shader_outlines[4]);
	shader_set_uniform_f(	shader_get_uniform(shd_sobeL_edge_2, "_filter_2"), _current_cam.shader_outlines[5]);
	shader_set_uniform_f(	shader_get_uniform(shd_sobeL_edge_2, "_filter_3"), _current_cam.shader_outlines[6]);
	shader_set_uniform_f(	shader_get_uniform(shd_sobeL_edge_2, "_filter_4"), _current_cam.shader_outlines[7]);
	
	if surface_exists(_current_cam.surf_postproces)	{draw_surface_ext(_current_cam.surf_postproces,0,0,1,1,0,-1,1);};
	
	surface_reset_target();
	shader_reset();

}