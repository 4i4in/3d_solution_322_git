function exe_reset_draw_3d_arrays(_option)
{
	if _option != undefined
		{
			switch(_option)
				{
					case "in_game":
						var _ds3_static = exe_prepare_3d_objects_to_draw(cam_struct.cam1,"static");
						draw_3d_array_static_major = _ds3_static[0];
						draw_3d_array_static_minor = _ds3_static[1];
						draw_3d_array_static_first = _ds3_static[2];
						
						draw_3d_array_controled = exe_prepare_3d_objects_to_draw(cam_struct.cam1,"controled");
						if cam_struct.cam1.show.help_obj > 0
							{	draw_3d_array_helpers_obj = exe_prepare_3d_objects_to_draw(cam_struct.cam1,"helpers_obj");	}
						break;
					case "normal_flow":
						if cam_struct.cam1.shd_pass_seq[0] + cam_struct.cam1.shd_pass_seq[1] + cam_struct.cam1.shd_pass_seq[2] > 0
							{
								if game_time mod cam_struct.cam1.shd_pass_modulo[0] == 0
									{
										var _ds3_static = exe_prepare_3d_objects_to_draw(cam_struct.cam1,"static");
										draw_3d_array_static_major = _ds3_static[0];
										draw_3d_array_static_minor = _ds3_static[1];
										draw_3d_array_static_first = _ds3_static[2];
										if cam_struct.cam1.show.help_obj > 0
											{	draw_3d_array_helpers_obj = exe_prepare_3d_objects_to_draw(cam_struct.cam1,"helpers_obj");	};
									}
							}
						draw_3d_array_controled = exe_prepare_3d_objects_to_draw(cam_struct.cam1,"controled");
						break;
				}
		}
	else	//game start or total reset;
		{
			draw_3d_array_static_first = [];
			draw_3d_array_static_major = [];
			draw_3d_array_static_minor = [];
			draw_3d_array_controled = [];
			draw_3d_array_helpers_obj = [];
		}
}