function exe_find_and_push_matrix_to_mapeditor_connector(_carry)
{
	var _cc = _carry[0];
	var _obj = map3d[$ menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]]	][menus.obj_editor.obj_num];
	var _conector_list = exe_return_conector_list(_obj);
	var _con_name_tf = "conector_" + string(_cc);
	for(var _cll = 0; _cll < array_length(_conector_list); _cll++)
		{
			if string(_conector_list[_cll][0]) == _con_name_tf
				{
					_carry = [_conector_list[_cll][1]];
					exe_push_matrix_to_mapeditor_connector(_carry);
					break;
				}
		}
}