function exe_delete_object_by_hash(_carry)
{
	var _hash_to_delete = _carry[0];
	var _deleted = 0;
	
	if _deleted < 1
		{
			for(var _nn = array_length(map3d.static_objects) -1;	_nn > -1; _nn--	)
				{
					var _obj = map3d.static_objects[_nn];
					var _hash = _obj.character_sheet.hash;
					if string(_hash) == _hash_to_delete	
						{	
							_obj = exe_kill_obj_vbuffs(_obj);
							exe_kill_triangles_hash_in_static_coliders(_hash);
							array_delete(map3d.static_objects,_nn,1);	
							_deleted = 1;
							break;
						};
				}
		}
	if _deleted < 1
		{
			for(var _nn = array_length(map3d.controlable_objects) -1;	_nn > -1; _nn--	)
				{
					var _obj = map3d.controlable_objects[_nn];
					var _hash = _obj.character_sheet.hash;
					if string(_hash) == _hash_to_delete	
						{	
							_obj = exe_kill_obj_vbuffs(_obj);
							exe_kill_triangles_hash_in_dynamic_coliders(_hash);
							array_delete(map3d.controlable_objects,_nn,1);
							_deleted = 1;
							break;
						};
				}
		}
	if _deleted < 1
		{
			for(var _nn = array_length(map3d.helpers_objects) -1;	_nn > -1; _nn--	)
				{
					var _obj = map3d.helpers_objects[_nn];
					var _hash = _obj.character_sheet.hash;
					if string(_hash) == _hash_to_delete	
						{	
							_obj = exe_kill_obj_vbuffs(_obj);
							exe_kill_triangles_hash_in_static_coliders(_hash);
							array_delete(map3d.helpers_objects,_nn,1);
							_deleted = 1;
							break;
						};
				}
		}
	if _deleted > 0	{menus.obj_editor.obj_num = -1;};//reset selection
	exe_reset_draw_3d_arrays("in_game");
}