function exe_create_standard_helmets()
{
	var temp_buff_data = buffer_load("equipmennt/helmets/helmet_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	helmet_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["helmet_01_basic",helmet_01_basic,"equipmennt/helmets/helmet_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/helmets/visor_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	visor_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["visor_01_basic",visor_01_basic,"equipmennt/helmets/visor_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/helmets/hat_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	hat_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["hat_01",hat_01,"equipmennt/helmets/hat_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/helmets/hat_01_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	hat_01_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["hat_01_colider",hat_01_colider,"equipmennt/helmets/hat_01_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/helmets/hat_02.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	hat_02 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["hat_02",hat_02,"equipmennt/helmets/hat_02.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/helmets/hat_02_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	hat_02_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["hat_02_colider",hat_02_colider,"equipmennt/helmets/hat_02_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	
	
	var temp_buff_data = buffer_load("equipmennt/helmets/helmet_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	helmet_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["helmet_01",helmet_01,"equipmennt/helmets/helmet_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/helmets/helmet_02.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	helmet_02 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["helmet_02",helmet_02,"equipmennt/helmets/helmet_02.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/helmets/helmet_03.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	helmet_03 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["helmet_03",helmet_03,"equipmennt/helmets/helmet_03.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/helmets/helmet_04.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	helmet_04 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["helmet_04",helmet_04,"equipmennt/helmets/helmet_04.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/helmets/helmet_05.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	helmet_05 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["helmet_05",helmet_05,"equipmennt/helmets/helmet_05.vbuff"]; array_push(all_vbuff_list,_lpack);
}