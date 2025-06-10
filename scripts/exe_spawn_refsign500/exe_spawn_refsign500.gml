function exe_spawn_refsign500(_carry)
{
	var _str = "refsigns500_";
	_str += string(_carry[0][0]) + "_";
	_str += string(_carry[0][1]) + "_"; 
	_str += string(_carry[0][2]);
	
	
	for(var _nn = array_length(map3d.static_objects) -1;	_nn > -1; _nn--	)
		{
			var _obj = map3d.static_objects[_nn];
			var _name = _obj.character_sheet.name;
			if string(_name) == _str	
				{	
					_obj = exe_kill_obj_vbuffs(_obj);
					array_delete(map3d.static_objects,_nn,1);	
				};
		}
	exe_reset_draw_3d_arrays("in_game");	
	var _temp_o = exe_add_refsigns500(_carry[0]);
	_temp_o = exe_finish_obj_operations(_temp_o);
	map3d = exe_map3d_add_static_objects_v2(map3d,_temp_o);
}