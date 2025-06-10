function exe_test_map_struct_for_loading(_temp_map3d,_loading_str)
{
	var _struct_correct = 1;
	if struct_get(_temp_map3d, "map_name") == undefined	
		{	
			_struct_correct = 0;	
			_loading_str	+= "map_name fail !!!;";	_loading_str += "\n";
		}
	else		_loading_str	+= "map_name corect;";	_loading_str += "\n";
			
	if struct_get(_temp_map3d, "map_directory") == undefined	
		{	
			_struct_correct = 0;	
			_loading_str	+= "map_directory fail !!!;";	_loading_str += "\n";
		}
	else		_loading_str	+= "map_directory corect;";	_loading_str += "\n";
			
	if struct_get(_temp_map3d, "world_map_bigchunks") == undefined	
		{	
			_struct_correct = 0;	
			_loading_str	+= "world_map_bigchunks fail !!!;";	_loading_str += "\n";
		}
	else		_loading_str	+= "world_map_bigchunks corect;";	_loading_str += "\n";
			
	if struct_get(_temp_map3d, "world_settings") == undefined	
		{	
			_struct_correct = 0;	
			_loading_str	+= "world_settings fail !!!;";	_loading_str += "\n";
		}
	else		_loading_str	+= "world_settings corect;";	_loading_str += "\n";
			
	if struct_get(_temp_map3d, "controlable_objects") == undefined	
		{	
			_temp_map3d.controlable_objects = [];	
			_loading_str	+= "controlable_objects empty;";	_loading_str += "\n";
		}
	else		_loading_str	+= "controlable_objects corect;";	_loading_str += "\n";
			
	if struct_get(_temp_map3d, "static_objects") == undefined	
		{	
			_temp_map3d.static_objects = [];	
			_loading_str	+= "static_objects empty;";	_loading_str += "\n";
		}
	else		_loading_str	+= "static_objects corect;";	_loading_str += "\n";
			
	if struct_get(_temp_map3d, "general_gravity") == undefined	
		{	
			_temp_map3d.general_gravity = [0,0,-9.81 *17];	
			_loading_str	+= "general_gravity empty;";	_loading_str += "\n";
		}
	else		_loading_str	+= "general_gravity corect;";	_loading_str += "\n";
			
	if struct_get(_temp_map3d, "keep_world_settings") == undefined	
		{	
			_struct_correct = 0;	
			_loading_str	+= "keep_world_settings fail !!!;";	_loading_str += "\n";
		}
	else		_loading_str	+= "keep_world_settings corect;";	_loading_str += "\n";
			
	return([_struct_correct,_loading_str,_temp_map3d]);
}