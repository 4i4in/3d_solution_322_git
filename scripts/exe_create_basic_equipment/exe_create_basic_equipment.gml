function exe_create_basic_equipment()
{
	var temp_buff_data = buffer_load("equipmennt/basic/backpack1.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	backpack1 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["backpack1",backpack1,"equipmennt/basic/backpack1.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/basic/backpack1_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	backpack1_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["backpack1_colider",backpack1_colider,"equipmennt/basic/backpack1_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	var temp_buff_data = buffer_load("equipmennt/basic/backpack2.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	backpack2 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["backpack2",backpack2,"equipmennt/basic/backpack2.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/basic/backpack2_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	backpack2_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["backpack2_colider",backpack2_colider,"equipmennt/basic/backpack2_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	var temp_buff_data = buffer_load("equipmennt/basic/backpack3.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	backpack3 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["backpack3",backpack3,"equipmennt/basic/backpack3.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/basic/backpack3_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	backpack3_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["backpack3_colider",backpack3_colider,"equipmennt/basic/backpack3_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	var temp_buff_data = buffer_load("equipmennt/basic/line1.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	line1 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["line1",line1,"equipmennt/basic/line1.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/basic/line1_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	line1_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["line1_colider",line1_colider,"equipmennt/basic/line1_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
}