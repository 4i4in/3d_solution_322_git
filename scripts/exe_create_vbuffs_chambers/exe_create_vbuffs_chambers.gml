function exe_create_vbuffs_chambers()
{
	var temp_buff_data = buffer_load("terrain/chambers/chamber_3x3h1_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_chamber_3x3h1_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_chamber_3x3h1_colider",vbuff_chamber_3x3h1_colider,"terrain/chambers/chamber_3x3h1_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/chambers/chamber_3x3h1_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_chamber_3x3h1_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_chamber_3x3h1_show",vbuff_chamber_3x3h1_show,"terrain/chambers/chamber_3x3h1_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
}