function exe_duplicate_object_by_hash(_carry)
{
	var _hash_to_duplicate = _carry[0];
	
	var _obj_dup = -1;
	
	if _obj_dup == -1
		{
			for(var _nn = array_length(map3d.static_objects) -1;	_nn > -1; _nn--	)
				{
					var _obj = map3d.static_objects[_nn];
					var _hash = _obj.character_sheet.hash;
					if string(_hash) == _hash_to_duplicate	
						{	
							_obj_dup = variable_clone(_obj);
							
							_obj_dup =  exe_new_name_new_hash(_obj_dup);
							
							_obj_dup = exe_rotate_all_vbuffs(_obj_dup,0,[1,1,1]);
							
							map3d = exe_map3d_add_static_objects_v2(map3d,_obj_dup);
							break;
						};
				}
		}
	if _obj_dup == -1
		{
			for(var _nn = array_length(map3d.controlable_objects) -1;	_nn > -1; _nn--	)
				{
					var _obj = map3d.controlable_objects[_nn];
					var _hash = _obj.character_sheet.hash;
					if string(_hash) == _hash_to_duplicate	
						{	
							_obj_dup = variable_clone(_obj);
							_obj_dup =  exe_new_name_new_hash(_obj_dup);
							
							map3d = exe_map3d_add_controlled_objects_v2(map3d,_obj_dup);
							break;
						};
				}
		}
	if _obj_dup == -1
		{
			for(var _nn = array_length(map3d.helpers_objects) -1;	_nn > -1; _nn--	)
				{
					var _obj = map3d.helpers_objects[_nn];
					var _hash = _obj.character_sheet.hash;
					if string(_hash) == _hash_to_duplicate	
						{	
							_obj_dup = variable_clone(_obj);
							_obj_dup =  exe_new_name_new_hash(_obj_dup);
							
							_obj_dup = exe_rotate_all_vbuffs(_obj_dup,0,[1,1,1]);
							
							map3d = exe_map3d_add_helpers_objects_v2(map3d,_obj_dup);
							break;
						};
				}
		}
	exe_reset_draw_3d_arrays("in_game");
}