function exe_return_conector_list(_obj)
{
	var _conector_list = [];
	var _posMat = variable_clone(_obj.part_posMat[0]);
	var _name = "conector_0";
	array_push(_conector_list,[_name,_posMat]);
	
	for(var _ii = 1; _ii < array_length(_obj.part_posMat); _ii++)
		{
			if	string_starts_with(_obj.part_vbuff_helper_load_reference[_ii][0],"vbuff_conector_")
				{
					_name = variable_clone(_obj.part_naming[_ii]);
					_posMat = variable_clone(_obj.part_posMat[_ii]);
					array_push(_conector_list,[_name,_posMat]);
				}
		}
	return(_conector_list);
}