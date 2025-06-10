function exe_save_list_vbuff_simple_menu_updated(_carry)
{
	//refresh list without filter
	menus.vbuff_simple_menu.list_vbuff_simple_menu_updated = exe_update_list_vbuff_simple_menu_updated([],[]);
	
	var _file_name = _carry[0];
	var _file_directory = _carry[1];
	var _file = file_text_open_write(working_directory + string(_file_directory) + string(_file_name));
	var _temp_parse = json_stringify(menus.vbuff_simple_menu.list_vbuff_simple_menu_updated,true);
	file_text_write_string(_file, _temp_parse);
	file_text_close(_file);
	
	delete(_temp_parse);
	gc_collect();
	
	reset_current_menu_array = 1;
}