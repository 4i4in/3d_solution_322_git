function exe_draw_3d()
{
	if freeze_3d_operations > 1	{exit;};//exe_freeze_3d_operations
	
	gpu_set_ztestenable(true);
	gpu_set_cullmode(cull_clockwise);
	
	exe_reset_draw_3d_arrays("normal_flow");
	
	switch(menus.graphic_control.split_screen)
		{
			case "none":
				exe_perform_3d_draw_sequence_for_cam(cam_struct.cam1);
				break;
			case "vertical":
				exe_perform_3d_draw_sequence_for_cam(cam_struct.cam1);
				exe_perform_3d_draw_sequence_for_cam(cam_struct.cam2);
				break;
			case "horizontal":
				exe_perform_3d_draw_sequence_for_cam(cam_struct.cam1);
				exe_perform_3d_draw_sequence_for_cam(cam_struct.cam2);	
				break;
		}
	
	
	matrix_set(matrix_world, matrix_build_identity());
	gpu_set_ztestenable(false);
	gpu_set_cullmode(cull_noculling);

	//TBD postprocess here
	
	switch(menus.graphic_control.split_screen)
		{
			case "none":
				exe_postproces_for(cam_struct.cam1);	
				break;
			case "vertical":
				exe_postproces_for(cam_struct.cam1);
				exe_postproces_for(cam_struct.cam2);	
				break;
			case "horizontal":
				exe_postproces_for(cam_struct.cam1);
				exe_postproces_for(cam_struct.cam2);	
				break;
		}
	
	
	exe_assembly_main_surface();
	if freeze_3d_operations > 0	{exe_freeze_3d_operations_create_surface();};
}