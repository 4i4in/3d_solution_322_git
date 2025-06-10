function exe_gizmo_change_size(_carry)
{
	var _operation = _carry[0];
	var _value = _carry[1];
	
	var _current_value = menus.mapeditor_control_menu.gizmo_scale[0];
	
	switch(_operation)
		{
			case "add":	_current_value += _value;
				mouse_struct.mtime = 3;
				break;
			case "switch":
				if _current_value == .1	{_current_value = .5;}
				else if _current_value == .5	{_current_value = 1.;}
				else if _current_value == 1.	{_current_value = 2.;}
				else if _current_value == 2.	{_current_value = .1;}
				else					{_current_value = 1.;}
				break;
		}
	if _current_value < 0	{_current_value = 0;}
	menus.mapeditor_control_menu.gizmo_scale[0] = _current_value;
	reset_current_menu_array = 1;
}