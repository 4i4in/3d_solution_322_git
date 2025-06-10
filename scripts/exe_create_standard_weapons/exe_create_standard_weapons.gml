function exe_create_standard_weapons()
{
	var temp_buff_data = buffer_load("equipmennt/weapons/sword1.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	sword1 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["sword1",sword1,"equipmennt/weapons/sword1.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/sword1_colider.vbuff");//short sword
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	sword1_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["sword1_colider",sword1_colider,"equipmennt/weapons/sword1_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/sword2.vbuff");//short sword
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	sword2 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["sword2",sword2,"equipmennt/weapons/sword2.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/sword2_colider.vbuff");//short sword
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	sword2_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["sword2_colider",sword2_colider,"equipmennt/weapons/sword2_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/scabbard1.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	scabbard1 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["scabbard1",scabbard1,"equipmennt/weapons/scabbard1.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/scabbard1_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	scabbard1_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["scabbard1_colider",scabbard1_colider,"equipmennt/weapons/scabbard1_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/scabbard2.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	scabbard2 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["scabbard2",scabbard2,"equipmennt/weapons/scabbard2.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/scabbard2_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	scabbard2_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["scabbard2_colider",scabbard2_colider,"equipmennt/weapons/scabbard2_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/scabbard3.vbuff");//for dagger
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	scabbard3 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["scabbard3",scabbard3,"equipmennt/weapons/scabbard3.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/scabbard3_colider.vbuff");//for dagger
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	scabbard3_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["scabbard3_colider",scabbard3_colider,"equipmennt/weapons/scabbard3_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/dagger1.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	dagger1 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["dagger1",dagger1,"equipmennt/weapons/dagger1.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/dagger1_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	dagger1_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["dagger1_colider",dagger1_colider,"equipmennt/weapons/dagger1_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/axe1.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	axe1 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["axe1",axe1,"equipmennt/weapons/axe1.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/axe1_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	axe1_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["axe1_colider",axe1_colider,"equipmennt/weapons/axe1_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/pickaxe1.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	pickaxe1 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["pickaxe1",pickaxe1,"equipmennt/weapons/pickaxe1.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/pickaxe1_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	pickaxe1_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["pickaxe1_colider",pickaxe1_colider,"equipmennt/weapons/pickaxe1_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/knife1.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	knife1 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["knife1",knife1,"equipmennt/weapons/knife1.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/knife1_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	knife1_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["knife1_colider",knife1_colider,"equipmennt/weapons/knife1_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/walking_stick.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	walking_stick = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["walking_stick",walking_stick,"equipmennt/weapons/walking_stick.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/spade1.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	spade1 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["spade1",spade1,"equipmennt/weapons/spade1.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/spade1_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	spade1_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["spade1_colider",spade1_colider,"equipmennt/weapons/spade1_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/choppa_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	choppa_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["choppa_01",choppa_01,"equipmennt/weapons/choppa_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("equipmennt/weapons/choppa_01_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	choppa_01_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["choppa_01_colider",choppa_01_colider,"equipmennt/weapons/choppa_01_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
}