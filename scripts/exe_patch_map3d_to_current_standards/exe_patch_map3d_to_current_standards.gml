function exe_patch_map3d_to_current_standards(_temp_map3d)
{
	if struct_get(_temp_map3d,"vbuff_list_source") == undefined
		{
			struct_set(_temp_map3d,"vbuff_list_source","vbuff_lists/default_vbuff_set");
show_debug_message("addiing to map3d : vbuff_list_source ")			
		}
		
	return(_temp_map3d);
}