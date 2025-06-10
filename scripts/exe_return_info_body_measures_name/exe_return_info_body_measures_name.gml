function exe_return_info_body_measures_name(_carry,_alt)
{
	var _selected_object_type = _carry[0];
	var _selected_object_num =	_carry[1];
	
	var _return_info = "error; no info;";
	
	if _alt != undefined	//passed from function
		{
			var _obj = _alt;
		}
	else
		{
			var _obj = map3d[$ _selected_object_type][_selected_object_num];
		}
	
	if struct_get(_obj.character_sheet, "body_measures") != undefined
		{
			_carry = exe_process_body_measures_names_operation(_carry,_obj);
			_return_info = _carry[6];
		}
	else	{	_return_info = "no _obj.character_sheet, body_measures";	};
	
	return(_return_info);
}