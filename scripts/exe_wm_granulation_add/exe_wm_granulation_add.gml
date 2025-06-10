function exe_wm_granulation_add(_carry)
{
	var _switch =		_carry[0];
	var _add =			_carry[1];
	
	switch(_switch)
		{
			case 0:
				menus.world_control_menu._granulation += _add;
				if menus.world_control_menu._granulation < 1	{menus.world_control_menu._granulation = 1;};
				break;
			case 1:
				menus.world_control_menu._biome_filter += _add;
				if menus.world_control_menu._biome_filter < 0		{menus.world_control_menu._biome_filter = 0;};
				if menus.world_control_menu._biome_filter > 1000	{menus.world_control_menu._biome_filter = 1000;};
				break;
			case 2:
				menus.world_control_menu._biome_sink += (_add*0.1);
				if menus.world_control_menu._biome_sink < 0.		{menus.world_control_menu._biome_sink = 0.;};
				if menus.world_control_menu._biome_sink > 10.	{menus.world_control_menu._biome_sink = 10.;};
				break;
		}
		
		
	mouse_struct.mtime = 3;
	reset_current_menu_array = 1;
}