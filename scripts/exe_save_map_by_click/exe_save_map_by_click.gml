function exe_save_map_by_click(_carry)
{
	//_carry not used now; map3d would block the ram;
	exe_save_map(map3d);
	
	var _str = "saved to:";
	_str += string(working_directory + string(map3d.map_directory) + string(map3d.map_name));	_str += "\n";
	_str += "game_save_id  :" + string(game_save_id);
	exe_throw_fake_rclick_info([_str,40,100]);
	
}