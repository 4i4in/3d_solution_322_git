function exe_create_vbuffs_open_walls()
{
	var temp_buff_data = buffer_load("terrain/open_walls/wall_01_w4h3_sdoor_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_wall_01_w4h3_sdoor_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_wall_01_w4h3_sdoor_colider",vbuff_wall_01_w4h3_sdoor_colider,"terrain/open_walls/wall_01_w4h3_sdoor_colider.vbuff"]; array_push(all_vbuff_list,_lpack);

	var temp_buff_data = buffer_load("terrain/open_walls/wall_01_w4h3_sdoor_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_wall_01_w4h3_sdoor_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_wall_01_w4h3_sdoor_show",vbuff_wall_01_w4h3_sdoor_show,"terrain/open_walls/wall_01_w4h3_sdoor_show.vbuff"]; array_push(all_vbuff_list,_lpack);

	var temp_buff_data = buffer_load("terrain/open_walls/wall_03_w4h3_sdoor_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_wall_03_w4h3_sdoor_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_wall_03_w4h3_sdoor_show",vbuff_wall_03_w4h3_sdoor_show,"terrain/open_walls/wall_03_w4h3_sdoor_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	var temp_buff_data = buffer_load("terrain/open_walls/wall_01_w4h3_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_wall_01_w4h3_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_wall_01_w4h3_colider",vbuff_wall_01_w4h3_colider,"terrain/open_walls/wall_01_w4h3_colider.vbuff"]; array_push(all_vbuff_list,_lpack);

	var temp_buff_data = buffer_load("terrain/open_walls/wall_01_w4h3_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_wall_01_w4h3_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_wall_01_w4h3_show",vbuff_wall_01_w4h3_show,"terrain/open_walls/wall_01_w4h3_show.vbuff"]; array_push(all_vbuff_list,_lpack);

	var temp_buff_data = buffer_load("terrain/open_walls/wall_03_w4h3_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_wall_03_w4h3_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_wall_03_w4h3_show",vbuff_wall_03_w4h3_show,"terrain/open_walls/wall_03_w4h3_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	var temp_buff_data = buffer_load("terrain/open_walls/wall_01_w4h3_broken_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_wall_01_w4h3_broken_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_wall_01_w4h3_broken_colider",vbuff_wall_01_w4h3_broken_colider,"terrain/open_walls/wall_01_w4h3_broken_colider.vbuff"]; array_push(all_vbuff_list,_lpack);

	var temp_buff_data = buffer_load("terrain/open_walls/wall_01_w4h3_broken_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_wall_01_w4h3_broken_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_wall_01_w4h3_broken_show",vbuff_wall_01_w4h3_broken_show,"terrain/open_walls/wall_01_w4h3_broken_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/open_walls/wall_03_w4h3_broken_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_wall_03_w4h3_broken_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_wall_03_w4h3_broken_show",vbuff_wall_03_w4h3_broken_show,"terrain/open_walls/wall_03_w4h3_broken_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
}