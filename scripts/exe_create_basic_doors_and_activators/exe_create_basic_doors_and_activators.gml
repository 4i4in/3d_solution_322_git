function exe_create_basic_doors_and_activators()
{
	var temp_buff_data = buffer_load("terrain/doors/doors_1.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_doors_1 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_doors_1",vbuff_doors_1,"terrain/doors/doors_1.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/doors/doors_1a.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_doors_1a = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_doors_1a",vbuff_doors_1a,"terrain/doors/doors_1a.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/doors/doors_1b.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_doors_1b = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_doors_1b",vbuff_doors_1b,"terrain/doors/doors_1b.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	//krata
	var temp_buff_data = buffer_load("terrain/doors/doors_1c.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_doors_1c = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_doors_1c",vbuff_doors_1c,"terrain/doors/doors_1c.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/doors/doors_1c_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_doors_1c_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_doors_1c_colider",vbuff_doors_1c_colider,"terrain/doors/doors_1c_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	//pale
	var temp_buff_data = buffer_load("terrain/doors/doors_1d.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_doors_1d = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_doors_1d",vbuff_doors_1d,"terrain/doors/doors_1d.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	
	
	var temp_buff_data = buffer_load("terrain/doors/doors_1b_colider_around.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_doors_1b_colider_around = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_doors_1b_colider_around",vbuff_doors_1b_colider_around,"terrain/doors/doors_1b_colider_around.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/doors/doors_1b_show_around.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_doors_1b_show_around = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_doors_1b_show_around",vbuff_doors_1b_show_around,"terrain/doors/doors_1b_show_around.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/doors/doors_1d_show_around.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_doors_1d_show_around = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_doors_1d_show_around",vbuff_doors_1d_show_around,"terrain/doors/doors_1d_show_around.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	var temp_buff_data = buffer_load("terrain/doors/doors_1b_colider_around_small.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_doors_1b_colider_around_small = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_doors_1b_colider_around_small",vbuff_doors_1b_colider_around_small,"terrain/doors/doors_1b_colider_around_small.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/doors/doors_1b_show_around_small.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_doors_1b_show_around_small = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_doors_1b_show_around_small",vbuff_doors_1b_show_around_small,"terrain/doors/doors_1b_show_around_small.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	var temp_buff_data = buffer_load("terrain/doors/doors_1d_show_around_small.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_doors_1d_show_around_small = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_doors_1d_show_around_small",vbuff_doors_1d_show_around_small,"terrain/doors/doors_1d_show_around_small.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	
	var temp_buff_data = buffer_load("terrain/doors/doors1_activator2_small.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_doors1_activator2_small = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_doors1_activator2_small",vbuff_doors1_activator2_small,"terrain/doors/doors1_activator2_small.vbuff"]; array_push(all_vbuff_list,_lpack);
	
}