function exe_gizmo_rotation_change(_carry)
{
	var _operation = _carry[0];
	var _value = _carry[1];
	
	var _current_value = menus.obj_editor.gizmo_rotation;
	
	switch(_operation)
		{
			case "add":	_current_value += _value;
				mouse_struct.mtime = 3;
				break;
			case "switch":
				if _current_value == 0	{_current_value = 90;}
				else if _current_value == 90	{_current_value = 45;}
				else if _current_value == 45	{_current_value = 30;}
				else					{_current_value = 0;}
				break;
		}
	if _current_value < 0	{_current_value = 0;}
	menus.obj_editor.gizmo_rotation = _current_value;
	reset_current_menu_array = 1;
}