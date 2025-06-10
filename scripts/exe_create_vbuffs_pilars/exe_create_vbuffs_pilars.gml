function exe_create_vbuffs_pilars()
{
	var temp_buff_data = buffer_load("terrain/pilars/pillar_01_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_pilar_01_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_pilar_01_colider",vbuff_pilar_01_colider,"terrain/pilars/pillar_01_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/pilars/pillar_01_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_pilar_01_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_pilar_01_show",vbuff_pilar_01_show,"terrain/pilars/pillar_01_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/pilars/pillar_02_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_pilar_02_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_pilar_02_colider",vbuff_pilar_02_colider,"terrain/pilars/pillar_02_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/pilars/pillar_02_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_pilar_02_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_pilar_02_show",vbuff_pilar_02_show,"terrain/pilars/pillar_02_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/pilars/pillar_03_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_pilar_03_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_pilar_03_colider",vbuff_pilar_03_colider,"terrain/pilars/pillar_03_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/pilars/pillar_03_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_pilar_03_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_pilar_03_show",vbuff_pilar_03_show,"terrain/pilars/pillar_03_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
}