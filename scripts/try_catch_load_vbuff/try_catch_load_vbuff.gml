function try_catch_load_vbuff(_carry)
{
	var _path = _carry[0];
	var _name = _carry[1];
	var _variable_return = _carry[2];
	var _loading_str = _carry[3];
	
	
	var _file_directory = "";
	var _file_subdir = "";
	
	switch(_path)
		{
			case "this_map":
				_file_directory = map3d.map_directory;
				_file_subdir = map3d.map_name;
				_path = string(working_directory) + string(_file_directory) + string(_file_subdir) + "/" + _name + ".vbuff";
				break;
		}
	
	var _lfc = -1; //loading file corect
	try
		{	
			var temp_buff_data = buffer_load(_path);
			var _reffered = -1;
			switch(_name)
				{
					case "vb_combined_terrain":	vb_combined_terrain = vertex_create_buffer_from_buffer(temp_buff_data, vformat);	vertex_freeze(vb_combined_terrain);	_loading_str	+= "vbuff loaded : " + _name;	_loading_str += "\n";	_reffered = 1; break;
					case "vb_combined_biome":	vb_combined_biome = vertex_create_buffer_from_buffer(temp_buff_data, vformat);		vertex_freeze(vb_combined_biome);	_loading_str	+= "vbuff loaded : " + _name;	_loading_str += "\n";	_reffered = 1; break;
				}
			buffer_delete(temp_buff_data);
			if _reffered < 0
				{
					_loading_str	+= "Failed to refer vbuff!!! try_catch_load_vbuff : " + _name + "\n" + "path : " +  string(_path) + "\n" + "carry : " + string(_carry);	_loading_str += "\n";
				}
			_lfc = 1;
		}
	catch(_)	
		{
			_lfc = -1;
		};
	if _lfc < 0	{	_loading_str	+= "Failed completly!!! try_catch_load_vbuff carry : " + string(_carry);	_loading_str += "\n";}
	
	return(_loading_str);
}