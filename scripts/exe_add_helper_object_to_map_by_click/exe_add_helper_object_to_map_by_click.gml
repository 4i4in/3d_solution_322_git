function exe_add_helper_object_to_map_by_click(_carry)
{
	var _func = _carry[0];
	var _pos = _carry[1];
	
	var _obj = -1;
	switch(_func)
		{
			case "exe_add_paint_grass_01_d100":				_obj = exe_add_paint_grass_01_d100(_pos);	break;
		}
	
	if _obj != -1
		{
			_obj = exe_finish_obj_operations(_obj);
			map3d = exe_map3d_add_helpers_objects_v2(map3d,_obj);
		}
	reset_current_menu_array = 1;
}