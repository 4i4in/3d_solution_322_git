function exe_create_vbuffs_wallroot()
{
	var temp_buff_data = buffer_load("terrain/wallroot/wallroot_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_wallroot_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_wallroot_01",vbuff_wallroot_01,"terrain/wallroot/wallroot_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/wallroot/wallroot_02.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_wallroot_02 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_wallroot_02",vbuff_wallroot_02,"terrain/wallroot/wallroot_02.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/wallroot/wallroot_03.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_wallroot_03 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_wallroot_03",vbuff_wallroot_03,"terrain/wallroot/wallroot_03.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/wallroot/wallroot_04.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_wallroot_04 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_wallroot_04",vbuff_wallroot_04,"terrain/wallroot/wallroot_04.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/wallroot/wallroot_05.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_wallroot_05 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_wallroot_05",vbuff_wallroot_05,"terrain/wallroot/wallroot_05.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
}