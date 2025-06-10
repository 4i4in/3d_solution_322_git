function exe_move_edited_obj_by_gizmo(_col)
{
	var _func = _col[2];
	if keyboard_struct.SHIFT > 0	{	_func = menus.obj_editor.last_gizmo_func;	};//hold previous axis
	if _func > 0
		{
			if _col[1] ==	menus.obj_editor.obj_hash	//same hash
				{
					//var _selected_object_type = menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]];
					//var _obj = map3d[$ _selected_object_type][menus.obj_editor.obj_num];
									
					var _bn = -1;	var _cc = -1;
					var _value = menus.obj_editor.gizmo_rotation;
					var _val_trans = menus.obj_editor.gizmo_translation;
					switch(_func)
						{
							case 1:	_bn = 5;	_value = -_val_trans;	break;//right
							case 2:	_bn = 3;	_value = _val_trans;	break;//forward
							case 3:	_bn = 4;	_value = _val_trans;	break;//up
											
							case 4:	_bn = 5;	_value = _val_trans;	break;//left
							case 5:	_bn = 3;	_value = -_val_trans;	break;//backward
							case 6:	_bn = 4;	_value = -_val_trans;	break;//down
											
							case 10:	_value *= -1.
							case 7:	
								switch(menus.obj_editor.gizmo)
									{
										case 0:	_bn = 0;	break;//down
										case 1:	_bn = 6;	break;//down
									}
								break;//tilt
												
							case 8:	_value *= -1.
							case 11:	
								switch(menus.obj_editor.gizmo)
									{
										case 0:	_bn = 1;	break;//down
										case 1:	_bn = 7;	break;//down
									}
								break;//pitch
												
							case 9:	_value *= -1.
							case 12:	
								switch(menus.obj_editor.gizmo)
									{
										case 0:	_bn = 2;	break;//down
										case 1:	_bn = 8;	break;//down
									}
								break;//yaw
								
							case 21:	case 22:	case 23:	case 24:
							case 25:	case 26:	case 27:	case 28:
							case 29:	case 30:	case 31:	case 32:
							case 33:	case 34:	case 35:	case 36:
								_cc = _func;
								break;//conector
											
						}
					if _bn > -1
						{
							if keyboard_struct.CONTROL > 0	{	_value *= 0.1;	};//precision
							var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0],	0,	_bn, "add",	_value,3];
							exe_change_dependency_reference_value(_carry);
							if abs(_value) > 15	
								{
									if keyboard_struct.SHIFT > 0	{mouse_struct.mtime = 5;}
									else							{mouse_struct.mtime = 15;}
								}//slow down
							menus.obj_editor.last_gizmo_func = _func;
						}
					if _cc > -1
						{
							exe_find_and_push_matrix_to_mapeditor_connector([_cc-20]);
							
						}
				}
			else//select conector from another hash
				{
					
				}
		}
}