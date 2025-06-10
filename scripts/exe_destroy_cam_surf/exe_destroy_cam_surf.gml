function exe_destroy_cam_surf(_current_cam)
{
	//game_set_speed(1, gamespeed_fps);
	
	surface_free(_current_cam.surf_color);
	surface_free(_current_cam.surf_normals);
	surface_free(_current_cam.surf_depth);
	//surface_free(_current_cam.temp_surf_depth); freeing causing crash
	surface_free(_current_cam.surf_xyz);
	
	surface_free(_current_cam.surf_postproces);
	surface_free(_current_cam.surf_postproces_colors);
	surface_free(_current_cam.surf_postproces_normals);
	surface_free(_current_cam.surf_postproces_simple_normals);
	surface_free(_current_cam.surf_postproces_croshatch);
	
	surface_free(_current_cam.surf_helpers);
	
	//game_set_speed(60, gamespeed_fps);
}