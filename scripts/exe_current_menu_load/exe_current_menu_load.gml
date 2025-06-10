function exe_current_menu_load()
{
	if array_length(control_array.current_menu_array) < 1
		{
			click_restricted = [];
			menu_templates = exe_create_menu_templates();
			
			if menus.menus_menu.load_to_screen > 0
				{	
					control_array.current_menu_array = exe_add_menu_buttons("menus_menu");
					var _push_restriction = exe_return_menu_restriction("menus_menu");
					array_push(click_restricted,_push_restriction);
				};
				
			if menus.test_menu.load_to_screen > 0
				{	
					control_array.current_menu_array = exe_add_menu_buttons("test_menu");
					var _push_restriction = exe_return_menu_restriction("test_menu");
					array_push(click_restricted,_push_restriction);
				};
				
			if menus.mouse_menu.load_to_screen > 0
				{
					control_array.current_menu_array = exe_add_menu_buttons("mouse_menu");
					var _push_restriction = exe_return_menu_restriction("mouse_menu");
					array_push(click_restricted,_push_restriction);
				};
				
			if menus.keyboard_menu.load_to_screen > 0
				{
					control_array.current_menu_array = exe_add_menu_buttons("keyboard_menu");
					var _push_restriction = exe_return_menu_restriction("keyboard_menu");
					array_push(click_restricted,_push_restriction);
				};
				
			if menus.pad_menu.load_to_screen > 0
				{
					control_array.current_menu_array = exe_add_menu_buttons("pad_menu");
					var _push_restriction = exe_return_menu_restriction("pad_menu");
					array_push(click_restricted,_push_restriction);
				};
				
			if menus.cam_menu.load_to_screen > 0
				{
					control_array.current_menu_array = exe_add_menu_buttons("cam_menu");
					var _push_restriction = exe_return_menu_restriction("cam_menu");
					array_push(click_restricted,_push_restriction);
				};
				
			if menus.obj_editor.load_to_screen > 0
				{
					control_array.current_menu_array = exe_add_menu_buttons("obj_editor");
					var _push_restriction = exe_return_menu_restriction("obj_editor");
					array_push(click_restricted,_push_restriction);
				};
				
			if menus.graphic_control.load_to_screen > 0
				{
					control_array.current_menu_array = exe_add_menu_buttons("graphic_control_menu");
					var _push_restriction = exe_return_menu_restriction("graphic_control_menu");
					array_push(click_restricted,_push_restriction);
				};
			
			if menus.srf_by_mouse_menu.load_to_screen > 0
				{
					control_array.current_menu_array = exe_add_menu_buttons("srf_by_mouse_menu");
					var _push_restriction = exe_return_menu_restriction("srf_by_mouse_menu");
					array_push(click_restricted,_push_restriction);
				};
				
			if menus.time_control_menu.load_to_screen > 0
				{
					control_array.current_menu_array = exe_add_menu_buttons("time_control_menu");
					var _push_restriction = exe_return_menu_restriction("time_control_menu");
					array_push(click_restricted,_push_restriction);
				};
				
			if menus.simple_gameplay_menu.load_to_screen > 0
				{
					control_array.current_menu_array = exe_add_menu_buttons("simple_gameplay_menu");
					var _push_restriction = exe_return_menu_restriction("simple_gameplay_menu");
					array_push(click_restricted,_push_restriction);
				};
				
			if menus.world_control_menu.load_to_screen > 0
				{
					control_array.current_menu_array = exe_add_menu_buttons("world_control_menu");
					var _push_restriction = exe_return_menu_restriction("world_control_menu");
					array_push(click_restricted,_push_restriction);
				};
				
			if menus.mapeditor_control_menu.load_to_screen > 0
				{
					control_array.current_menu_array = exe_add_menu_buttons("mapeditor_control_menu");
					var _push_restriction = exe_return_menu_restriction("mapeditor_control_menu");
					array_push(click_restricted,_push_restriction);
				};
				
			if menus.throwinfo_control_menu.load_to_screen > 0
				{
					control_array.current_menu_array = exe_add_menu_buttons("throwinfo_control_menu");
					var _push_restriction = exe_return_menu_restriction("throwinfo_control_menu");
					array_push(click_restricted,_push_restriction);
				};
				
			if menus.vbuff_simple_menu.load_to_screen > 0
				{
					control_array.current_menu_array = exe_add_menu_buttons("vbuff_simple_menu");
					var _push_restriction = exe_return_menu_restriction("vbuff_simple_menu");
					array_push(click_restricted,_push_restriction);
					
					if game_time mod 13 < 1
						{
							if freeze_3d_operations < 1	
								{
									freeze_3d_operations = 1;
									if array_length(menus.vbuff_simple_menu.list_vbuff_simple_menu_updated) < 1
										{menus.vbuff_simple_menu.list_vbuff_simple_menu_updated = exe_update_list_vbuff_simple_menu_updated([],[]);};
								};
							menus.vbuff_simple_menu.minimised = 0;//maximize menu
							exe_close_all_other_menus_but(["vbuff_simple_menu"]);
						}
				};
		}
}