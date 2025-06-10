function exe_draw_clickable()
{
	if !surface_exists(main_surface)	{	main_surface = surface_create(dgw,dgh);	}
	
	surface_set_target(main_surface);
	
	
	for(var _ii = 0; _ii < array_length(control_array.current_menu_array); _ii++)
		{
			try
				{
					if control_array.current_menu_array[_ii][6] > 0
						{
							exe_draw_icon(	control_array.current_menu_array[_ii][0],
									control_array.current_menu_array[_ii][1],
									control_array.current_menu_array[_ii][5],
									);
						}
					else
						{
							exe_draw_icon(	control_array.current_menu_array[_ii][0],
									control_array.current_menu_array[_ii][1],
									control_array.current_menu_array[_ii][4],
									);
						}
				}
			catch(_)	
				{
					exe_draw_text_on_background([dgw/2,dgh/2,"exe_draw_clickable fail	exe_draw_icon","center",c_maroon,0.7,c_white,1.,3]);
					show_debug_message("exe_draw_clickable fail	exe_draw_icon");//need logfile
					reset_current_menu_array = 1;
				};
				
			try
				{
					if control_array.current_menu_array[_ii][7] != ""
						{
							draw_set_halign(fa_center);
							draw_set_valign(fa_middle);
							var _string = control_array.current_menu_array[_ii][7];
							var _xx1 = floor((control_array.current_menu_array[_ii][0] + control_array.current_menu_array[_ii][2])/2);
							var _yy1 = floor((control_array.current_menu_array[_ii][1] + control_array.current_menu_array[_ii][3])/2);
							exe_draw_icon_text(_xx1,_yy1,_string);
						}
				}
			catch(_)	
				{
					exe_draw_text_on_background([dgw/2,dgh/2,"exe_draw_clickable fail	exe_draw_icon_text","center",c_maroon,0.7,c_white,1.,3]);
					show_debug_message("exe_draw_clickable fail	exe_draw_icon_text");//need logfile
					reset_current_menu_array = 1;
				};
			
		}
	
	
	surface_reset_target();
}