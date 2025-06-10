function exe_move_respawn_space_trigger(_carry,_alt)
{
	if _alt != undefined	//passed from function
		{
			var _obj = _alt;
		}
	else	//passed from object editor
		{
			var _selected_object_type = _carry[0];
			var _selected_object_num =	_carry[1];
			
			var _obj = map3d[$ _selected_object_type][_selected_object_num];
		}
	
	var _array_pos =	_carry[2];
	var _operation =	_carry[3];
	var _value_change =	_carry[4];
	
	var _minmax = 0;	var _min = 0; var _max = 0;
	
	switch(_array_pos)
		{
			case "-x": _array_pos = 5;	_value_change *= 50; _minmax = 1;	_min = -10000;	_max = -100;	break;
			case "x-set": _array_pos = 5;	break;
			case "+x": _array_pos = 6;	_value_change *= 50; _minmax = 1;	_min = 100;		_max = 10000;	break;
			case "x+set": _array_pos = 6;	break;
			
			case "-y": _array_pos = 7;	_value_change *= 50; _minmax = 1;	_min = -10000;	_max = -100;	break;
			case "y-set": _array_pos = 7;	break;
			case "+y": _array_pos = 8;	_value_change *= 50; _minmax = 1;	_min = 100;		_max = 10000;	break;
			case "y+set": _array_pos = 8;	break;
			
			case "-z": _array_pos = 9;	_value_change *= 50; _minmax = 1;	_min = -10000;	_max = -100;	break;
			case "z-set": _array_pos = 9;	break;
			case "+z": _array_pos = 10;	_value_change *= 50; _minmax = 1;	_min = 100;		_max = 10000;	break;
			case "z+set": _array_pos = 10;	break;
		}
	if _array_pos > -1
		{
			var _value = _obj.character_sheet.respawn_point[_array_pos];
			if _operation == "add" {_value += _value_change;};
			if _operation == "set" {_value = _value_change;};
			
			if _minmax > 0
				{
					if _value < _min	{_value = _min;};
					if _value > _max	{_value = _max;};
				}
			_obj.character_sheet.respawn_point[_array_pos] = _value;
		}
		
		
	if _alt != undefined
		{
			return(_obj);
		}
	else
		{
			map3d[$ _selected_object_type][_selected_object_num] = _obj;
			mouse_struct.mtime = 2;
			reset_current_menu_array = 1;
		}
}