function exe_create_vbuffs_entrances()
{
	var temp_buff_data = buffer_load("terrain/entrances/entrance_01_5x5_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_entrance_01_5x5_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_entrance_01_5x5_colider",vbuff_entrance_01_5x5_colider,"terrain/entrances/entrance_01_5x5_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/entrances/entrance_01_5x5_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_entrance_01_5x5_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_entrance_01_5x5_show",vbuff_entrance_01_5x5_show,"terrain/entrances/entrance_01_5x5_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	var temp_buff_data = buffer_load("terrain/entrances/entrance_02_5x5_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_entrance_02_5x5_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_entrance_02_5x5_colider",vbuff_entrance_02_5x5_colider,"terrain/entrances/entrance_02_5x5_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/entrances/entrance_02_5x5_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_entrance_02_5x5_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_entrance_02_5x5_show",vbuff_entrance_02_5x5_show,"terrain/entrances/entrance_02_5x5_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	var temp_buff_data = buffer_load("terrain/entrances/entrance_03_5x5_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_entrance_03_5x5_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_entrance_03_5x5_colider",vbuff_entrance_03_5x5_colider,"terrain/entrances/entrance_03_5x5_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/entrances/entrance_03_5x5_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_entrance_03_5x5_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_entrance_03_5x5_show",vbuff_entrance_03_5x5_show,"terrain/entrances/entrance_03_5x5_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
}