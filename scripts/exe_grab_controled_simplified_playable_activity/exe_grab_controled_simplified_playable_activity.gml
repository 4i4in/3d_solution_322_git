function exe_grab_controled_simplified_playable_activity(_carry)
{
	var _return_array = [];
	if _carry != undefined	{reset_current_menu_array = 1;};//reset
	else
		{
			for(var _ii = 0; _ii < array_length(map3d.controlable_objects); _ii++)
				{
					var _obj = map3d.controlable_objects[_ii];
			
					var _name = _obj.character_sheet.name;
					
					var _is_filtred = 0;
					for(var _nn = 0;_nn < array_length(menus.simple_gameplay_menu.activity_filter); _nn+=2	)
						{
							var _filter_name = menus.simple_gameplay_menu.activity_filter[_nn];
							if menus.simple_gameplay_menu.activity_filter[_nn+1] > 0
								{
									if string_starts_with(_name,_filter_name)	{_is_filtred = 1;};
								}
						}
					
					if _is_filtred < 1
						{
							var _hash = _obj.character_sheet.hash;
							var _active = _obj.control_method.active[0];
							var _camera1 = 0;
							var _camera2 = 0;
							if struct_get(_obj.control_method, "camera") != undefined
								{
									var _curent_cam = string(_obj.control_method.camera[1]);
									switch(_curent_cam)
										{
											case "cam1":	_camera1 = _obj.control_method.camera[0];	break;
											case "cam2":	_camera2 = _obj.control_method.camera[0];	break;
										}
								}
							var _controler = "none";
							if struct_get(_obj.control_method, "input_from") != undefined
								{
									var _str = "";
									if _obj.control_method.input_from[0] = "pad_struct.pad_result_array"
										{
											_str += "pad" + string(_obj.control_method.input_from[1]);
										}
									else	{	_str +=	_obj.control_method.input_from[0];}
									_controler = _str;
								}
						
							var _set = [_name,_hash,_active,_camera1,_camera2,_controler];
							array_push(_return_array,_set);
						}
				}
		}
		
	return(_return_array);
}