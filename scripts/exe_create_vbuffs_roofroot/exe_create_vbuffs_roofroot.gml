function exe_create_vbuffs_roofroot()
{
	var temp_buff_data = buffer_load("terrain/roofroot/roofroot_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_roofroot_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_roofroot_01",vbuff_roofroot_01,"terrain/roofroot/roofroot_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/roofroot/roofroot_02.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_roofroot_02 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_roofroot_02",vbuff_roofroot_02,"terrain/roofroot/roofroot_02.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/roofroot/roofroot_03.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_roofroot_03 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_roofroot_03",vbuff_roofroot_03,"terrain/roofroot/roofroot_03.vbuff"]; array_push(all_vbuff_list,_lpack);
	
}