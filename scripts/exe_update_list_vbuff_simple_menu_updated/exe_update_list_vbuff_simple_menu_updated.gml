function exe_update_list_vbuff_simple_menu_updated(_loaded_list,_filter)
{
	var _list_to_check = [];
	if array_length(_loaded_list) > 0
		{
			_list_to_check = _loaded_list;
		}
	else
		{
			_list_to_check = all_vbuff_list;
		}
	var _list = [];
	for(var _ii = 0; _ii < array_length(_list_to_check); _ii++)
		{
			var _lv = _list_to_check[_ii];

			var _fail = 0;
			var _vbuff_name = "";
			try			{	_vbuff_name = _lv[0];	}
			catch(_)	{	_vbuff_name = "_!!!_fail";	_fail++;	}
			
			var _vbuff_ref = 0;
			var _typeoff = 0;
			try			{	
							_vbuff_ref = struct_get(self, _vbuff_name);	
							_typeoff = typeof(struct_get(self, _vbuff_name));
						}
			catch(_)	{	_vbuff_ref = "_!!!_fail";	_fail++;	}
			
			var _file_path = "";
			try			{	
							_file_path = _lv[2];	
						}
			catch(_)	{	_file_path = "_!!!_fail";	_fail++;	}
			
			var _file_exist = 0;
			if _file_path == "generated"	{_file_exist = 1;}
			else{	_file_exist = file_exists(_file_path);	};
			
			var _mem_size = 0;
			try{	_mem_size = vertex_get_buffer_size(_vbuff_ref);	}
			catch(_)	{_mem_size = "empty"};
			
			var _reference_works = 0;
			try{	
					if exe_return_vbuff_by_reference(_vbuff_name) > -1			{_reference_works = 1;}
					else														{_reference_works = -1;}
				}
			catch(_)	{_reference_works = -1;};
			
			if _fail > 0
				{
					//TBD log file
show_debug_message("_fail exe_update_list_vbuff_simple_menu_updated : " + string(_lv));			
				}
				
			array_push(_list,[_vbuff_name,_vbuff_ref,_file_path,_typeoff,_mem_size,_file_exist,_reference_works]);
		}
	return(_list);
}