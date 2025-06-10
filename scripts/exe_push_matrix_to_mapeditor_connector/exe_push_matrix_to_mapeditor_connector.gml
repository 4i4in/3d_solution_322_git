function exe_push_matrix_to_mapeditor_connector(_carry)
{
	var _pos_mat = _carry[0];
	
	var _pos_mat_correct = 0;
	if array_length(_pos_mat) == 16
		{
			for(var _ii = 0; _ii < array_length(_pos_mat);_ii++)
				{
					if !is_real(_pos_mat[_ii])	
						{
							var _str = "wrong pos mat in:" +  "\n";
							_str += "exe_push_matrix_to_mapeditor_connector" + "\n";
							_str += string(_pos_mat);
							exe_throw_fake_rclick_info(_str);
							exit;
						};
				}
			_pos_mat_correct = 1;
		}
	if _pos_mat_correct > 0
		{
			menus.obj_editor.gizmo_connector = variable_clone(_pos_mat);
		}
}