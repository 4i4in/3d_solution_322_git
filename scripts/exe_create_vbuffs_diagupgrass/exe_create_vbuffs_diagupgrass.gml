function exe_create_vbuffs_diagupgrass()
{
	var temp_buff_data = buffer_load("terrain/diagupgrass/diagup_grass_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_diagup_grass_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_diagup_grass_01",vbuff_diagup_grass_01,"terrain/diagupgrass/diagup_grass_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/diagupgrass/diagup_grass_02.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_diagup_grass_02 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_diagup_grass_02",vbuff_diagup_grass_02,"terrain/diagupgrass/diagup_grass_02.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/diagupgrass/diagup_grass_03.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_diagup_grass_03 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_diagup_grass_03",vbuff_diagup_grass_03,"terrain/diagupgrass/diagup_grass_03.vbuff"]; array_push(all_vbuff_list,_lpack);
	
}