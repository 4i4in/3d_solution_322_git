function exe_secondary_keyboard_reaction_01()
{
	//any time
	if keyboard_struct.F1 > 0	{	exe_switch_load_to_screen(["menus_menu","load_to_screen"]);	};
	if keyboard_struct.ENTER > 0//debug console?
		{	
			if !is_array(keyboard_struct.writing_to)	&&	keyboard_struct.text_input == ""
				{	
					keyboard_struct.writing_on = !keyboard_struct.writing_on;
					keyboard_struct.ENTER = 0;
					keyboard_struct.ktime = keyboard_struct.key_cool;
				};
		};
	if keyboard_struct.F11 > 0	{
									draw_text(200,200,"RESTARTING");draw_flush();
									exe_cleanse_everything();
									game_restart();	
								};
	if keyboard_struct.F12 > 0	{	game_end();	};
	
	var _mapeditor_on = 0;
	if menus.mapeditor_control_menu.load_to_screen > 0	{_mapeditor_on = 1;};
	if _mapeditor_on > 0	{	exe_mapeditor_key_shortcuts();	};
	
	var _vbuff_simple_menu_on = 0;
	if menus.vbuff_simple_menu.load_to_screen > 0	{_vbuff_simple_menu_on = 1;};
	if _vbuff_simple_menu_on > 0	{	exe_vbuff_simple_menu_key_shortcuts();	};
	
	//space to unfreeze 3d operations
	if freeze_3d_operations > 1
		{
			var _3d_freezer = 0;
			_3d_freezer += menus.vbuff_simple_menu.load_to_screen;
			if _3d_freezer < 1
				{
					if keyboard_struct.SPACE > 0	{freeze_3d_operations = 0;};
				}
		}
	
		
}