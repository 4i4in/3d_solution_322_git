function exe_create_vbuffs_decorations()
{
	var temp_buff_data = buffer_load("terrain/decorations/deco_ent_5x5_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_deco_ent_5x5_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_deco_ent_5x5_01",vbuff_deco_ent_5x5_01,"terrain/decorations/deco_ent_5x5_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/decorations/deco_ent_5x5_03.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_deco_ent_5x5_03 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_deco_ent_5x5_03",vbuff_deco_ent_5x5_03,"terrain/decorations/deco_ent_5x5_03.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/decorations/deco_floor_5x5_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_deco_floor_5x5_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_deco_floor_5x5_01",vbuff_deco_floor_5x5_01,"terrain/decorations/deco_floor_5x5_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/decorations/deco_floor_5x5_03.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_deco_floor_5x5_03 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_deco_floor_5x5_03",vbuff_deco_floor_5x5_03,"terrain/decorations/deco_floor_5x5_03.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/decorations/deadend_2x2_01_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_deadend_2x2_01_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_deadend_2x2_01_colider",vbuff_deadend_2x2_01_colider,"terrain/decorations/deadend_2x2_01_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/decorations/deadend_2x2_01_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_deadend_2x2_01_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_deadend_2x2_01_show",vbuff_deadend_2x2_01_show,"terrain/decorations/deadend_2x2_01_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/decorations/deadend_2x2_03_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_deadend_2x2_03_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_deadend_2x2_03_show",vbuff_deadend_2x2_03_show,"terrain/decorations/deadend_2x2_03_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
}