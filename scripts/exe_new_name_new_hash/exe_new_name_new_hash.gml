function exe_new_name_new_hash(_obj)
{
	_obj.character_sheet.hash = exe_return_hash(	string_join("|",current_time,date_current_datetime(),string(string_length(map3d)))	);
							
	var _new_num = _obj.character_sheet.hash mod 999883;
	var _name = _obj.character_sheet.name;
	var _ndigits = string_digits(_name);
	_name = string_replace(_name,_ndigits,_new_num);
	_obj.character_sheet.name = variable_clone(_name);

	return(_obj);
}