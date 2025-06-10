function exe_create_basic_vbuffs()
{
	try{//load vbuff list from file
			var _pathstring = string(working_directory) + map3d.vbuff_list_source;
			
			var _loaded_file = file_text_open_read(_pathstring);
			var _temp_vbuff_list = "";
			while (!file_text_eof(_loaded_file)) 
				{
				    _temp_vbuff_list += file_text_read_string(_loaded_file);
				    file_text_readln(_loaded_file);
				}
			file_text_close(_loaded_file);	delete(_loaded_file);
			
			var _list_is_corect = 0;
			try{
					_temp_vbuff_list = json_parse(_temp_vbuff_list);
					_list_is_corect = is_array(_temp_vbuff_list);
//safety switch for creating new files					
					//_list_is_corect = -1;
				}
			catch(_){_list_is_corect = -1;};
			if _list_is_corect > 0
				{
					var _temp_vbuff_list = exe_update_list_vbuff_simple_menu_updated(_temp_vbuff_list,[]);
					all_vbuff_list = [];
					for(var _tvl = 0; _tvl < array_length(_temp_vbuff_list); _tvl++)
						{
							var _vbuff_name = _temp_vbuff_list[_tvl][0];
							var _vbuff_path = _temp_vbuff_list[_tvl][2];
							if _vbuff_path == "generated"
								{
									switch(_vbuff_name)
										{
											case "vb_combined_terrain":	
												struct_set(self,_vbuff_name,-1);
												var _lpack = [_vbuff_name,struct_get(self,_vbuff_name),"generated"]; array_push(all_vbuff_list,_lpack);
												break;
											case "vb_combined_biome":
												struct_set(self,_vbuff_name,-1);
												var _lpack = [_vbuff_name,struct_get(self,_vbuff_name),"generated"]; array_push(all_vbuff_list,_lpack);
												break;
											case "vbuff_empty":
												struct_set(self,_vbuff_name,exe_create_empty_vbuff());
												var _lpack = [_vbuff_name,struct_get(self,_vbuff_name),"generated"]; array_push(all_vbuff_list,_lpack);
												break;
											case "vbuff_dgw_dgh":
												struct_set(self,_vbuff_name,exe_vbuff_dgw_dgh());
												var _lpack = [_vbuff_name,struct_get(self,_vbuff_name),"generated"]; array_push(all_vbuff_list,_lpack);
												break;
											case "vbuff_dir_arrow2":
												var temp_buff_data = buffer_load(string(working_directory) + "utylity_vbuff/dir_arrow2.vbuff");
												temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
												struct_set(self,_vbuff_name,vertex_create_buffer_from_buffer(temp_buff_data, vformat));
												buffer_delete(temp_buff_data);
												var _lpack = [_vbuff_name,struct_get(self,_vbuff_name),"generated"]; array_push(all_vbuff_list,_lpack);
												break;
											case "vbuff_dir_arrow2_x01":
												var temp_buff_data = buffer_load(string(working_directory) + "utylity_vbuff/dir_arrow2.vbuff");
												temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
												var _n_temp_buff_data = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
												_n_temp_buff_data = exe_scale_buff_by_value(_n_temp_buff_data,.1);
												struct_set(self,_vbuff_name,_n_temp_buff_data);
												buffer_delete(temp_buff_data);
												var _lpack = [_vbuff_name,struct_get(self,_vbuff_name),"generated"]; array_push(all_vbuff_list,_lpack);
												break;
											case "vbuff_dir_arrow2_x05":
												var temp_buff_data = buffer_load(string(working_directory) + "utylity_vbuff/dir_arrow2.vbuff");
												temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
												var _n_temp_buff_data = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
												_n_temp_buff_data = exe_scale_buff_by_value(_n_temp_buff_data,.5);
												struct_set(self,_vbuff_name,_n_temp_buff_data);
												buffer_delete(temp_buff_data);
												var _lpack = [_vbuff_name,struct_get(self,_vbuff_name),"generated"]; array_push(all_vbuff_list,_lpack);
												break;
											case "vbuff_dir_arrow2_x20":
												var temp_buff_data = buffer_load(string(working_directory) + "utylity_vbuff/dir_arrow2.vbuff");
												temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
												var _n_temp_buff_data = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
												_n_temp_buff_data = exe_scale_buff_by_value(_n_temp_buff_data,2.);
												struct_set(self,_vbuff_name,_n_temp_buff_data);
												buffer_delete(temp_buff_data);
												var _lpack = [_vbuff_name,struct_get(self,_vbuff_name),"generated"]; array_push(all_vbuff_list,_lpack);
												break;
										}
								}
							else
								{
									var _vbuff_path = string(working_directory) + _vbuff_path;
									var temp_buff_data = buffer_load(_vbuff_path);
									temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
									struct_set(self,_vbuff_name,vertex_create_buffer_from_buffer(temp_buff_data, vformat));
									buffer_delete(temp_buff_data);
									var _lpack = [_vbuff_name,struct_get(self,_vbuff_name),_vbuff_path]; array_push(all_vbuff_list,_lpack);
								}
						}
				}
			else//load hardcoded vbuffs
				{
	show_debug_message("fail in exe_create_basic_vbuffs; file corupted;");
					exe_create_hardcoded_vbuffs_failswitch();
				}
			delete(_temp_vbuff_list);
		}
	catch(_)//load hardcoded vbuffs
		{
	show_debug_message("fail in exe_create_basic_vbuffs; file fail;");
			exe_create_hardcoded_vbuffs_failswitch();
		}
}