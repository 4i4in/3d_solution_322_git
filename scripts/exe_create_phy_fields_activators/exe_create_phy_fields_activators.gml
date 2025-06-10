function exe_create_phy_fields_activators()
{
	var temp_buff_data = buffer_load("terrain/phy_fields/gfield_1x1x1_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_gfield_1x1x1_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_gfield_1x1x1_colider",vbuff_gfield_1x1x1_colider,"terrain/phy_fields/gfield_1x1x1_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/phy_fields/gfield_1x1x1_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_gfield_1x1x1_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_gfield_1x1x1_show",vbuff_gfield_1x1x1_show,"terrain/phy_fields/gfield_1x1x1_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	
	var temp_buff_data = buffer_load("terrain/phy_fields/gfield_2x2x1_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_gfield_2x2x1_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_gfield_2x2x1_colider",vbuff_gfield_2x2x1_colider,"terrain/phy_fields/gfield_2x2x1_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/phy_fields/gfield_2x2x1_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_gfield_2x2x1_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_gfield_2x2x1_show",vbuff_gfield_2x2x1_show,"terrain/phy_fields/gfield_2x2x1_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	
	var temp_buff_data = buffer_load("terrain/phy_fields/gfield_2x2x2_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_gfield_2x2x2_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_gfield_2x2x2_colider",vbuff_gfield_2x2x2_colider,"terrain/phy_fields/gfield_2x2x2_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/phy_fields/gfield_2x2x2_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_gfield_2x2x2_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_gfield_2x2x2_show",vbuff_gfield_2x2x2_show,"terrain/phy_fields/gfield_2x2x2_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	
	var temp_buff_data = buffer_load("terrain/phy_fields/gfield_3x3x1_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_gfield_3x3x1_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_gfield_3x3x1_colider",vbuff_gfield_3x3x1_colider,"terrain/phy_fields/gfield_3x3x1_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/phy_fields/gfield_3x3x1_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_gfield_3x3x1_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_gfield_3x3x1_show",vbuff_gfield_3x3x1_show,"terrain/phy_fields/gfield_3x3x1_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	
	var temp_buff_data = buffer_load("terrain/phy_fields/gfield_4x4x1_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_gfield_4x4x1_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_gfield_4x4x1_colider",vbuff_gfield_4x4x1_colider,"terrain/phy_fields/gfield_4x4x1_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/phy_fields/gfield_4x4x1_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_gfield_4x4x1_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_gfield_4x4x1_show",vbuff_gfield_4x4x1_show,"terrain/phy_fields/gfield_4x4x1_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	
	var temp_buff_data = buffer_load("terrain/phy_fields/gfield_5x5x1_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_gfield_5x5x1_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_gfield_5x5x1_colider",vbuff_gfield_5x5x1_colider,"terrain/phy_fields/gfield_5x5x1_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/phy_fields/gfield_5x5x1_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_gfield_5x5x1_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_gfield_5x5x1_show",vbuff_gfield_5x5x1_show,"terrain/phy_fields/gfield_5x5x1_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	
	
}