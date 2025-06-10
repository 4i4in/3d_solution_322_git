function exe_check_mouse_vs_screen()
{
	if  current_restricted < 0
		{
			var _get_px_and_translate = 0;
			if	mouse_struct.mlbutt > 0	&&	menus.srf_by_mouse_menu.load_to_screen > 0	&&
				menus.srf_by_mouse_menu.minimised < 1	{_get_px_and_translate = 1;};
				
			if _get_px_and_translate > 0	
				{
					exe_return_pixel_colors_at(mouse_struct.mx,mouse_struct.my);	
					exe_explain_pixel_colors_check();
					reset_current_menu_array = 1;
				};
			
			
			//select in editor
			var _get_px_hash_to_editor = 0;	
			if keyboard_struct.LALT < 1
				{
					if	mouse_struct.mlbutt > 0	&&	menus.obj_editor.load_to_screen > 0	&&
						menus.obj_editor.select_by_mouse > 0	{_get_px_hash_to_editor = 1;};
			
					if	mouse_struct.mrbutt > 0	&&	menus.obj_editor.load_to_screen > 0	&&
						menus.obj_editor.select_by_mouse < 1	{_get_px_hash_to_editor = 1;};
				
					if	mouse_struct.mlbutt > 0	&&	menus.mapeditor_control_menu.load_to_screen > 0	&&
						menus.obj_editor.select_by_mouse > 0	{_get_px_hash_to_editor = 1;};
					//mapeditor right click
					if	mouse_struct.mrbutt > 0	&&	menus.mapeditor_control_menu.load_to_screen > 0	&&
						menus.obj_editor.select_by_mouse < 1	{_get_px_hash_to_editor = 1;};
				}
			if _get_px_hash_to_editor > 0
				{
					var _valid = exe_return_pixel_colors_at(mouse_struct.mx,mouse_struct.my);
					if _valid < 0 {exit;};
					menus.obj_editor.obj_hash =	exe_return_from_srf_pixel_color("hash");
					if menus.obj_editor.obj_hash > -1
						{
							var _return_obj_and_array = exe_return_obj_and_array(menus.obj_editor.obj_hash);
							if _return_obj_and_array[0] > -1	&& _return_obj_and_array[1] > -1
								{
									menus.obj_editor.show_page1[0] = _return_obj_and_array[0];
									menus.obj_editor.obj_num = _return_obj_and_array[1];
									menus.obj_editor.show_page2[0] = exe_return_from_srf_pixel_color("part");
								}
						}
					mouse_struct.mtime = 3;
					reset_current_menu_array = 1;
				}
			//direct translation by mouse rightclick plus Left Alt
			if menus.obj_editor.obj_hash > -1	&& keyboard_struct.LALT > 0
				{
					var _get_px_xyzpos_to_direct_translation_in_editor = 0;	
					if	mouse_struct.mlbutt > 0	&&	menus.obj_editor.load_to_screen > 0
						{_get_px_xyzpos_to_direct_translation_in_editor = 1;};
					if	mouse_struct.mlbutt > 0	&&	menus.mapeditor_control_menu.load_to_screen > 0
						{_get_px_xyzpos_to_direct_translation_in_editor = 1;};
						
					if _get_px_xyzpos_to_direct_translation_in_editor > 0
						{
							var _valid = exe_return_pixel_colors_at(mouse_struct.mx,mouse_struct.my);
							if _valid < 0 {exit;};
							var _ny_pos =	exe_return_from_srf_pixel_color("xyzpos");
							var _return_obj_and_array = exe_return_obj_and_array(menus.obj_editor.obj_hash);
							if _return_obj_and_array[0] > -1	&& _return_obj_and_array[1] > -1
								{
									var _carry = [menus.obj_editor.page1_names[_return_obj_and_array[0]],_return_obj_and_array[1],[	_ny_pos[0],_ny_pos[1],_ny_pos[2]	]	];
									exe_teleport_obj_to_pos(_carry);
								}
							mouse_struct.mtime = 3;
							reset_current_menu_array = 1;
						}
				}
			
			
			//gizmo in editor
			var _get_px_help_move_gizmo = 0;	
			if	mouse_struct.mlbutt > 0	//if mouse_struct.mtime < 0
				{ if 	cam_struct.cam1.show.helpers > 0
				{ if menus.obj_editor.load_to_screen > 0	{ if menus.obj_editor.show_page3[0] == 5//move page is open
				{ if menus.obj_editor.select_by_mouse < 1
					{	_get_px_help_move_gizmo = 1;	}}}}}
					
			if	mouse_struct.mlbutt > 0	//if mouse_struct.mtime < 0
				{ if 	cam_struct.cam1.show.helpers > 0
				{ if menus.mapeditor_control_menu.load_to_screen > 0
				{ if menus.obj_editor.select_by_mouse < 1
					{	_get_px_help_move_gizmo = 1;	}}}}
					
			if _get_px_help_move_gizmo > 0
				{
					var _col = surface_getpixel_ext(cam_struct.cam1.surf_helpers, floor(mouse_struct.mx/4),floor(mouse_struct.my/4));
					exe_move_edited_obj_by_gizmo(_col);
				}
			else if game_time mod 11 == 0	//highlight helpers layer
				{
					var _gizmo_function_highlight = 0;	
					if 	cam_struct.cam1.show.helpers > 0	
						{	if menus.obj_editor.select_by_mouse < 1
							{
								if menus.obj_editor.load_to_screen > 0				{_gizmo_function_highlight = 1;};
								if menus.mapeditor_control_menu.load_to_screen > 0	{_gizmo_function_highlight = 1;};
							}
							else	{menus.obj_editor.gizmo_func_highlite = 0.;};
						}				
					if _gizmo_function_highlight > 0
						{
							var _col = surface_getpixel_ext(cam_struct.cam1.surf_helpers, floor(mouse_struct.mx/4),floor(mouse_struct.my/4));
							menus.obj_editor.gizmo_func_highlite = _col[2];
						}
				}
		}
}