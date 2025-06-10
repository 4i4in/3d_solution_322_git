function exe_swap_mouseover_picture(_mx,_my)
{
	for(var _ii = 0; _ii < array_length(control_array.current_menu_array); _ii++)
		{
			try
				{
					if point_in_rectangle(_mx,_my,
											control_array.current_menu_array[_ii][0],
											control_array.current_menu_array[_ii][1],
											control_array.current_menu_array[_ii][2],
											control_array.current_menu_array[_ii][3]
										)
							{	control_array.current_menu_array[_ii][6] = 1;	}
					else	{	control_array.current_menu_array[_ii][6] = 0;	}
				}
			catch(_)	
				{
					control_array.current_menu_array[_ii][6] = 0;
					exe_draw_text_on_background([_mx,_my,"exe_swap_mouseover_picture fail","lt_fos",c_maroon,0.7,c_white,1.,3]);
					show_debug_message("exe_swap_mouseover_picture fail");//need logfile
					reset_current_menu_array = 1;
				};
		}
}