function exe_change_shader_settings_in_cam(_carry)
{
	var _current_cam = menus.cam_menu.show_cam;
	var _current_cam_name = "cam"+string(_current_cam);
	
	var _curent_shader = cam_struct[$ _current_cam_name][$ _carry[0]];
	var _pos = _carry[1];
	var _value = _carry[2];
	var _command = _carry[3];
	
	switch(_carry[0])
		{
			case "shader_draw_grid":
				switch(_pos)
					{
						case 0:	_curent_shader[_pos] = !_curent_shader[_pos];	break;
						case 1:	case 2:	case 3:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 1	{_curent_shader[_pos] = 1;};
							mouse_struct.mtime = 3;
							break;
						case 4:	case 5:	case 6:	
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 0.1	{_curent_shader[_pos] = 0.1;};
							mouse_struct.mtime = 3;
							break;
						case 7:	case 8:	case 9:	
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 0.	{_curent_shader[_pos] = _curent_shader[_pos-6];};
							if _curent_shader[_pos] > _curent_shader[_pos-6]	{_curent_shader[_pos] = 0.;};
							mouse_struct.mtime = 3;
							break;
					}
					break;
			case "shader_blur_distance":
				switch(_pos)
					{
						case 0:	_curent_shader[_pos] = !_curent_shader[_pos];	break;
						case 1:	
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 1	{_curent_shader[_pos] = 1;};
							mouse_struct.mtime = 3;
							break;
						case 2:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 16	{_curent_shader[_pos] = 16;};
							mouse_struct.mtime = 3;
							break;
						case 3:	
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 1	{_curent_shader[_pos] = 1;};
							if _curent_shader[_pos] > 8	{_curent_shader[_pos] = 8;};
							mouse_struct.mtime = 3;
							break;
						case 4:	
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 0	{_curent_shader[_pos] = 1;};
							if _curent_shader[_pos] > 1	{_curent_shader[_pos] = 0;};
							mouse_struct.mtime = 3;
							break;
					}
					break;
			case "shader_outlines":
				switch(_pos)
					{
						case 0:	_curent_shader[_pos] = !_curent_shader[_pos];	break;
						case 1:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 16	{_curent_shader[_pos] = 16;};
							mouse_struct.mtime = 3;
							break;
						case 2:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 1	{_curent_shader[_pos] = 1;};
							mouse_struct.mtime = 3;
							break;
						case 3:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 1	{_curent_shader[_pos] = 1;};
							if _curent_shader[_pos] > 7	{_curent_shader[_pos] = 7;};
							mouse_struct.mtime = 3;
							break;
						case 4:	case 5:	case 6:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 0	{_curent_shader[_pos] = 0.;};
							mouse_struct.mtime = 3;
							break;
						case 7:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 1.	{_curent_shader[_pos] = 1.;};
							if _curent_shader[_pos] > 32.	{_curent_shader[_pos] = 32.;};
							mouse_struct.mtime = 3;
							break;
					}
					break;
			case "shader_sol_pos":
				switch(_pos)
					{
						case 0:	case 1:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < -1.	{_curent_shader[_pos] = 1.;};
							if _curent_shader[_pos] > 1.	{_curent_shader[_pos] = -1.;};
							mouse_struct.mtime = 2;
							break;
						case 2:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < -1.	{_curent_shader[_pos] = -1.;};
							if _curent_shader[_pos] > 1.	{_curent_shader[_pos] = 1.;};
							mouse_struct.mtime = 2;
							break;
					}
					break;
			case "shader_sol_col":
				switch(_pos)
					{
						case 0:	case 1: case 2:
							_curent_shader[_pos] += _value*0.01;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < -2.	{_curent_shader[_pos] = -2.;};
							if _curent_shader[_pos] > 2.	{_curent_shader[_pos] = 2.;};
							mouse_struct.mtime = 0;
							break;
					}
					break;
			case "shader_shade_mix":
				switch(_pos)
					{
						case 0:
							_curent_shader[_pos] += _value*0.01;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 0.	{_curent_shader[_pos] = 0.;};
							if _curent_shader[_pos] > 1.	{_curent_shader[_pos] = 1.;};
							mouse_struct.mtime = 0;
							break;
					}
					break;
			case "throw_colisions_helpers":
				switch(_pos)
					{
						case 0:	_curent_shader[_pos] = !_curent_shader[_pos];	break;
					}
					break;
					
			case "shd_pass_seq":
				switch(_pos)
					{
						case 0:	case 1:	case 2:	case 3:	case 4:	case 5:	
						_curent_shader[_pos] = !_curent_shader[_pos];	break;
					}
					break;
			case "g_buff_full":
				switch(_pos)
					{
						case 3:	
						_curent_shader[_pos] = !_curent_shader[_pos];	break;
					}
					break;
			case "draw_first_dist":
				switch(_pos)
					{
						case 0:
						switch(_command)
							{
								case "reset": _curent_shader = _value;	break;
								case "add": _curent_shader += _value;	break;
							}
						if _curent_shader < 0.	{_curent_shader = 0.;};
						cam_struct[$ _current_cam_name][$ _carry[0]] = _curent_shader;
							break;
					}
					break;
			case "shd_pass_modulo":
				switch(_curent_shader[_pos])
					{
						case 1:	_curent_shader[_pos] = 2;	break;
						case 2:	_curent_shader[_pos] = 3;	break;
						case 3:	_curent_shader[_pos] = 5;	break;
						case 5:	_curent_shader[_pos] = 7;	break;
						case 7:	_curent_shader[_pos] = 11;	break;
						case 11:	_curent_shader[_pos] = 13;	break;
						case 13:	_curent_shader[_pos] = 17;	break;
						case 17:	_curent_shader[_pos] = 19;	break;
						case 19:	_curent_shader[_pos] = 23;	break;
						case 23:	_curent_shader[_pos] = 29;	break;
						case 29:	_curent_shader[_pos] = 31;	break;
						case 31:	_curent_shader[_pos] = 37;	break;
						case 37:	_curent_shader[_pos] = 41;	break;
						case 41:	_curent_shader[_pos] = 43;	break;
						case 43:	_curent_shader[_pos] = 47;	break;
						case 47:	_curent_shader[_pos] = 53;	break;
						case 53:	_curent_shader[_pos] = 59;	break;
						case 59:	_curent_shader[_pos] = 1;	break;
					}
					break;
					
			case "shd_helpers":
				switch(_pos)
					{
						case 0:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 0.	{_curent_shader[_pos] = 0.;};
							if _curent_shader[_pos] > 4.	{_curent_shader[_pos] = 4.;};
							mouse_struct.mtime = 3;
							break;
						case 1:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 1.	{_curent_shader[_pos] = 1.;};
							if _curent_shader[_pos] > 32.	{_curent_shader[_pos] = 32.;};
							mouse_struct.mtime = 3;
							break;
					}
		}
	
	reset_current_menu_array = 1;
}