function exe_prepare_3d_objects_to_draw(_current_cam,_type)
{
	var _draw_3d_array = [];
	switch(_type)
		{
			case "static":	
				_draw_3d_array = exe_grab_static_to_array(_current_cam,_draw_3d_array,1,1,0);
				break;
			case "controled":	
				_draw_3d_array = exe_grab_controled_to_array(_current_cam,_draw_3d_array,1,1,0);
				break;
			case "helpers_obj"://fexample biome paints	
				_draw_3d_array = exe_grab_helpers_obj_to_array(_current_cam,_draw_3d_array,1,1,0);
				break;
		}

	return(_draw_3d_array);
}