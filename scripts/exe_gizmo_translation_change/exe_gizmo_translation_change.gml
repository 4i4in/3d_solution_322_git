function exe_gizmo_translation_change(_carry)
{
	var _operation = _carry[0];
	var _value = _carry[1];
	
	var _current_value = menus.obj_editor.gizmo_translation;
	
	switch(_operation)
		{
			case "add":	_current_value += _value;
				mouse_struct.mtime = 3;
				break;
			case "switch":
				if _current_value == 0	{_current_value = 5;}
				else if _current_value == 5	{_current_value = 40;}
				else if _current_value == 40	{_current_value = 80;}
				else					{_current_value = 0;}
				break;
		}
	if _current_value < 0	{_current_value = 0;}
	menus.obj_editor.gizmo_translation = _current_value;
	reset_current_menu_array = 1;
}