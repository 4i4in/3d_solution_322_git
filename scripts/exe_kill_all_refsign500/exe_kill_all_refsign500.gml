function exe_kill_all_refsign500(_carry)
{
	for(var _nn = array_length(map3d.static_objects) -1;	_nn > -1; _nn--	)
		{
			var _obj = map3d.static_objects[_nn];
			var _name = _obj.character_sheet.name;
			if string_starts_with(_name,"refsigns500_")	
				{	
					_obj = exe_kill_obj_vbuffs(_obj);
					array_delete(map3d.static_objects,_nn,1);	
				};
		}
	menus.obj_editor.obj_num = -1;
	exe_reset_draw_3d_arrays("in_game");
}