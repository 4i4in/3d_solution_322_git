function exe_create_game_utylity_vbuffs()
{
	var temp_buff_data = buffer_load("utylity_vbuff/camera.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_camera_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_camera_01",vbuff_camera_01,"utylity_vbuff/camera.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("utylity_vbuff/pntrdir.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_pntrdir_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_pntrdir_01",vbuff_pntrdir_01,"utylity_vbuff/pntrdir.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("utylity_vbuff/big_pointer.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_big_pointer = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_big_pointer",vbuff_big_pointer,"utylity_vbuff/big_pointer.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("utylity_vbuff/pointer_orange.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_pointer_orange = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_pointer_orange",vbuff_pointer_orange,"utylity_vbuff/pointer_orange.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("utylity_vbuff/pointer_green.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_pointer_green = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_pointer_green",vbuff_pointer_green,"utylity_vbuff/pointer_green.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("utylity_vbuff/main_part_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	main_part_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["main_part_01",main_part_01,"utylity_vbuff/main_part_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("utylity_vbuff/main_part_low.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	main_part_low = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["main_part_low",main_part_low,"utylity_vbuff/main_part_low.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("utylity_vbuff/main_part_total.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	main_part_total = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["main_part_total",main_part_total,"utylity_vbuff/main_part_total.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("utylity_vbuff/direction_sign.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_direction_sign_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_direction_sign_01",vbuff_direction_sign_01,"utylity_vbuff/direction_sign.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("utylity_vbuff/dir_arrow2.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_dir_arrow2 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	vbuff_dir_arrow2_x01 = exe_scale_buff_by_value(vbuff_dir_arrow2,.1);
	vbuff_dir_arrow2_x05 = exe_scale_buff_by_value(vbuff_dir_arrow2,.5);
	vbuff_dir_arrow2_x20 = exe_scale_buff_by_value(vbuff_dir_arrow2,2.);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_dir_arrow2",vbuff_dir_arrow2,"generated"]; array_push(all_vbuff_list,_lpack);
	var _lpack = ["vbuff_dir_arrow2_x01",vbuff_dir_arrow2_x01,"generated"]; array_push(all_vbuff_list,_lpack);
	var _lpack = ["vbuff_dir_arrow2_x05",vbuff_dir_arrow2_x05,"generated"]; array_push(all_vbuff_list,_lpack);
	var _lpack = ["vbuff_dir_arrow2_x20",vbuff_dir_arrow2_x20,"generated"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("utylity_vbuff/refsigns500.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_refsigns500 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_refsigns500",vbuff_refsigns500,"utylity_vbuff/refsigns500.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("utylity_vbuff/refsigns500_xyz.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_refsigns500_xyz = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_refsigns500_xyz",vbuff_refsigns500_xyz,"utylity_vbuff/refsigns500_xyz.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("utylity_vbuff/conector_1.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_conector_1 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_conector_1",vbuff_conector_1,"utylity_vbuff/conector_1.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("utylity_vbuff/conector_2.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_conector_2 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_conector_2",vbuff_conector_2,"utylity_vbuff/conector_2.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("utylity_vbuff/conector_3.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_conector_3 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_conector_3",vbuff_conector_3,"utylity_vbuff/conector_3.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("utylity_vbuff/conector_4.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_conector_4 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_conector_4",vbuff_conector_4,"utylity_vbuff/conector_4.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("utylity_vbuff/conector_5.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_conector_5 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_conector_5",vbuff_conector_5,"utylity_vbuff/conector_5.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("utylity_vbuff/conector_6.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_conector_6 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_conector_6",vbuff_conector_6,"utylity_vbuff/conector_6.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("utylity_vbuff/conector_7.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_conector_7 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_conector_7",vbuff_conector_7,"utylity_vbuff/conector_7.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("utylity_vbuff/conector_8.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_conector_8 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["vbuff_conector_8",vbuff_conector_8,"utylity_vbuff/conector_8.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
}