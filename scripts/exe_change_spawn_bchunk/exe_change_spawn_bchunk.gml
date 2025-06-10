function exe_change_spawn_bchunk(_carry)
{
	var _ref = _carry[0];
	var _vchange = _carry[1];
	var _operation = _carry[2];
	
	var _value = menus.world_control_menu.spawn_bchunk[_ref];
	
	switch(_operation)
		{
			case "add":
				_value += _vchange;
				break;
			case "set":
				_value = _vchange;
				break;
		}
	if _value < 0 {_value = 0;};
	
	menus.world_control_menu.spawn_bchunk[_ref] = _value;
	
	mouse_struct.mtime = 3;
	reset_current_menu_array = 1;
}