function exe_temporary_save_vbuff(_carry)
{
	var _vbuff = _carry[0];
	var _name = _carry[1];
	var _name_option = _carry[2];
	var _temp_buff = buffer_create(1, buffer_grow, 1);
	var _v_num = vertex_get_number(_vbuff);
	buffer_copy_from_vertex_buffer(_vbuff, 0, _v_num-1,  _temp_buff, 0);
	
	if _name_option == "no_temp"
			{	var _file_name =			_name + ".vbuff";	}
	else	{	var _file_name = "temp_" +	_name + ".vbuff";	};
	
	var _file_directory = map3d.map_directory;
	var _file_subdir = map3d.map_name;
	buffer_save(_temp_buff, working_directory + string(_file_directory) + string(_file_subdir) + "/" + string(_file_name));
	buffer_delete(_temp_buff);
}