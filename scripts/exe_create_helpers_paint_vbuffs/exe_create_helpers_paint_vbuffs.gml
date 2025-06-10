function exe_create_helpers_paint_vbuffs()
{
	var temp_buff_data = buffer_load("helpers_paint/helper_gras_01_d100.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_helper_gras_01_d100 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_helper_gras_01_d100",vbuff_helper_gras_01_d100,"helpers_paint/helper_gras_01_d100.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("helpers_paint/helper_gras_01_d250.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_helper_gras_01_d250 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_helper_gras_01_d250",vbuff_helper_gras_01_d250,"helpers_paint/helper_gras_01_d250.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("helpers_paint/helper_gras_01_d500.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_helper_gras_01_d500 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_helper_gras_01_d500",vbuff_helper_gras_01_d500,"helpers_paint/helper_gras_01_d500.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
}