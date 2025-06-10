function exe_create_standard_shields()
{
	var temp_buff_data = buffer_load("equipmennt/shields/shield1.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	shield1 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["shield1",shield1,"equipmennt/shields/shield1.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/shields/shield1_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	shield1_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["shield1_colider",shield1_colider,"equipmennt/shields/shield1_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/shields/shield2.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	shield2 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["shield2",shield2,"equipmennt/shields/shield2.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/shields/shield2_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	shield2_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["shield2_colider",shield2_colider,"equipmennt/shields/shield2_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
}