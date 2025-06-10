function exe_add_static_object_to_map_by_click(_carry)
{
	var _func = _carry[0];
	var _pos = _carry[1];
	
	var _obj = -1;
	switch(_func)
		{
			case "exe_add_single_stone_01":				_obj = exe_add_single_stone_01(_pos);	break;
			case "exe_add_single_pilar_01":				_obj = exe_add_single_pilar_01(_pos);	break;
			case "exe_add_single_bush_01":				_obj = exe_add_single_bush_01(_pos);	break;
			case "exe_add_single_grass_01":				_obj = exe_add_single_grass_01(_pos);	break;
			case "exe_add_tree_01":						_obj = exe_add_tree_01(_pos);	break;
			
			
			case "exe_add_single_chamber_5x5sqr":		_obj = exe_add_single_chamber_5x5sqr(_pos);	break;
			case "exe_add_single_corridor_L3_flat":		_obj = exe_add_single_corridor_L3_flat(_pos);	break;
			case "exe_add_single_corridor_L3_up":		_obj = exe_add_single_corridor_L3_up(_pos);	break;
			
			case "exe_add_single_corridor_L3_down":		_obj = exe_add_single_corridor_L3_down(_pos);	break;
			
			case "exe_add_single_floor_5x5":			_obj = exe_add_single_floor_5x5(_pos);	break;
			case "exe_add_single_floor_3x3":			_obj = exe_add_single_floor_3x3(_pos);	break;
			case "exe_add_single_wall_w4h3_01":			_obj = exe_add_single_wall_w4h3_01(_pos);	break;
			
			case "exe_add_entrance_01":					_obj = exe_add_entrance_01(_pos);	break;
			
			
		}
	
	if _obj != -1
		{
			_obj = exe_finish_obj_operations(_obj);
			map3d = exe_map3d_add_static_objects_v2(map3d,_obj);
		}
	reset_current_menu_array = 1;
}