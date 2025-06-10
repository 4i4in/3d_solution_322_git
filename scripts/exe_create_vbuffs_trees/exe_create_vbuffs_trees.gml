function exe_create_vbuffs_trees()
{
	var temp_buff_data = buffer_load("terrain/trees/tree_trunk_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	tree_trunk_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["tree_trunk_01",tree_trunk_01,"terrain/trees/tree_trunk_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/trees/tree_trunk_01_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	tree_trunk_01_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["tree_trunk_01_colider",tree_trunk_01_colider,"terrain/trees/tree_trunk_01_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/trees/tree_leaves_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	tree_leaves_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["tree_leaves_01",tree_leaves_01,"terrain/trees/tree_leaves_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/trees/tree_leaves_01_hires.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	tree_leaves_01_hires = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["tree_leaves_01_hires",tree_leaves_01_hires,"terrain/trees/tree_leaves_01_hires.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/trees/tree_leaves_01a_hires.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	tree_leaves_01a_hires = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["tree_leaves_01a_hires",tree_leaves_01a_hires,"terrain/trees/tree_leaves_01a_hires.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
	var temp_buff_data = buffer_load("terrain/trees/tree_trunk_02.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	tree_trunk_02 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["tree_trunk_02",tree_trunk_02,"terrain/trees/tree_trunk_02.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/trees/tree_trunk_02_colider.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	tree_trunk_02_colider = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["tree_trunk_02_colider",tree_trunk_02_colider,"terrain/trees/tree_trunk_02_colider.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("terrain/trees/tree_leaves_02.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	tree_leaves_02 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["tree_leaves_02",tree_leaves_02,"terrain/trees/tree_leaves_02.vbuff"]; array_push(all_vbuff_list,_lpack);
	
}