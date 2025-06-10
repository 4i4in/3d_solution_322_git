function exe_load_map_from_defined_file(filename)
{

	var _loading_str = "loading:";
	_loading_str	+= string(filename);	_loading_str += "\n";
			
	var _loaded_file = file_text_open_read(filename);
	var _temp_map3d = "";
	while (!file_text_eof(_loaded_file)) 
		{
			 _temp_map3d += file_text_read_string(_loaded_file);
		    file_text_readln(_loaded_file);
		};
	file_text_close(_loaded_file);
			
	_loading_str	+= "file read corectly;";	_loading_str += "\n";
			
	_temp_map3d = json_parse(_temp_map3d);
			
	_loading_str	+= "file parsed;";	_loading_str += "\n";
	
	var _struct_check = exe_test_map_struct_for_loading(_temp_map3d,_loading_str);
	var _struct_correct = _struct_check[0];
	_loading_str = _struct_check[1];
	_temp_map3d = _struct_check[2];
	
	if _struct_correct > 0
		{
			//TBD cleanse current map3d
			if struct_get(self,"map3d") != undefined
				{
					exe_cleanse_everything();
					_loading_str	+= "current map cleansed;";	_loading_str += "\n";
				}

			
			
			map3d = _temp_map3d;
			map3d = exe_patch_map3d_to_current_standards(map3d);
			
			exe_create_basic_vbuffs();
			_loading_str = try_catch_load_vbuff(["this_map", "vb_combined_terrain", vb_combined_terrain,_loading_str]);
			_loading_str = try_catch_load_vbuff(["this_map", "vb_combined_biome", vb_combined_biome,_loading_str]);
			
			//load and reform new map
			exe_fix_loaded_all_static_objects();
			exe_fix_loaded_all_dynamic_objects();
			exe_fix_loaded_all_helpers_objects();
					
			_loading_str	+= "new map loaded;";	_loading_str += "\n";


			exe_grab_collision_statics_for_current_array();
			exe_grab_collision_dynamic_for_current_array();
			
			_loading_str	+= "collisions array fixed;";	_loading_str += "\n";
		}
	else
		{
			_loading_str	+= "map loading aborted !!!;";	_loading_str += "\n";
		}
	exe_throw_fake_rclick_info([_loading_str,40,100]);
}