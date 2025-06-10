function exe_create_vbuffs_corridors()
{
	var temp_buff_data = buffer_load("terrain/corridors/corridor_01_w3d1_collider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_corridor_01_w3d1_collider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_corridor_01_w3d1_collider",vbuff_corridor_01_w3d1_collider,"terrain/corridors/corridor_01_w3d1_collider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/corridors/corridor_01_w3d1_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_corridor_01_w3d1_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_corridor_01_w3d1_show",vbuff_corridor_01_w3d1_show,"terrain/corridors/corridor_01_w3d1_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/corridors/corridor_01up_w3d1_collider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_corridor_01up_w3d1_collider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_corridor_01up_w3d1_collider",vbuff_corridor_01up_w3d1_collider,"terrain/corridors/corridor_01up_w3d1_collider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/corridors/corridor_01up_w3d1_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_corridor_01up_w3d1_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_corridor_01up_w3d1_show",vbuff_corridor_01up_w3d1_show,"terrain/corridors/corridor_01up_w3d1_show.vbuff"]; array_push(all_vbuff_list,_lpack);

	var temp_buff_data = buffer_load("terrain/corridors/corridor_01down_w3d1_collider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_corridor_01down_w3d1_collider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_corridor_01down_w3d1_collider",vbuff_corridor_01down_w3d1_collider,"terrain/corridors/corridor_01down_w3d1_collider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/corridors/corridor_01down_w3d1_show.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_corridor_01down_w3d1_show = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_corridor_01down_w3d1_show",vbuff_corridor_01down_w3d1_show,"terrain/corridors/corridor_01down_w3d1_show.vbuff"]; array_push(all_vbuff_list,_lpack);
	
}