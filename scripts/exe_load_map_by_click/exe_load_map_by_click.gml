function exe_load_map_by_click(_carry)
{
	clipboard_set_text(string(game_save_id));
	//clipboard_set_text(string(working_directory));
	var filename = get_open_filename(game_save_id + "map files|*.*", "");
	//"All Files|*.*|Images|*.png;*.jpg", "Select a file"
	if file_exists(filename)
		{
			exe_load_map_from_defined_file(filename);
		}
	else
		{
			exe_throw_fake_rclick_info(["no file selected",40,100]);
		}
	
}