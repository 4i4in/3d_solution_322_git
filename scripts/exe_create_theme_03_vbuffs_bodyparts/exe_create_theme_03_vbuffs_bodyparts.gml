function exe_create_theme_03_vbuffs_bodyparts()
{
	//bodyparts
	var temp_buff_data = buffer_load("bodyparts/theme_03/shoulder_R_01_theme_03.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	shoulder_R_01_theme_03 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["shoulder_R_01_theme_03",shoulder_R_01_theme_03,"bodyparts/theme_03/shoulder_R_01_theme_03.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_03/Uarm_R_01_theme_03.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Uarm_R_01_theme_03 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Uarm_R_01_theme_03",Uarm_R_01_theme_03,"bodyparts/theme_03/Uarm_R_01_theme_03.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_03/shoulder_L_01_theme_03.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	shoulder_L_01_theme_03 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["shoulder_L_01_theme_03",shoulder_L_01_theme_03,"bodyparts/theme_03/shoulder_L_01_theme_03.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_03/Uarm_L_01_theme_03.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Uarm_L_01_theme_03 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Uarm_L_01_theme_03",Uarm_L_01_theme_03,"bodyparts/theme_03/Uarm_L_01_theme_03.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_03/Lleg_R_01_theme_03.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Lleg_R_01_theme_03 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Lleg_R_01_theme_03",Lleg_R_01_theme_03,"bodyparts/theme_03/Lleg_R_01_theme_03.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_03/Lleg_L_01_theme_03.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Lleg_L_01_theme_03 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Lleg_L_01_theme_03",Lleg_L_01_theme_03,"bodyparts/theme_03/Lleg_L_01_theme_03.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_03/head_01_theme_03.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	head_01_theme_03 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["head_01_theme_03",head_01_theme_03,"bodyparts/theme_03/head_01_theme_03.vbuff"]; array_push(all_vbuff_list,_lpack);
	
}