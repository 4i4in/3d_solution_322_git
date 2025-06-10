function exe_create_theme_01_vbuffs_bodyparts()
{
	//bodyparts
	var temp_buff_data = buffer_load("bodyparts/theme_01/ass_pivot_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	ass_pivot_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["ass_pivot_01_theme_01",ass_pivot_01_theme_01,"bodyparts/theme_01/ass_pivot_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/spine_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	spine_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["spine_01_theme_01",spine_01_theme_01,"bodyparts/theme_01/spine_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/spine_02_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	spine_02_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["spine_02_theme_01",spine_02_theme_01,"bodyparts/theme_01/spine_02_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/neck_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	neck_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["neck_01_theme_01",neck_01_theme_01,"bodyparts/theme_01/neck_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/head_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	head_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["head_01_theme_01",head_01_theme_01,"bodyparts/theme_01/head_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/jaw_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	jaw_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["jaw_01_theme_01",jaw_01_theme_01,"bodyparts/theme_01/jaw_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/shoulder_R_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	shoulder_R_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["shoulder_R_01_theme_01",shoulder_R_01_theme_01,"bodyparts/theme_01/shoulder_R_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/Uarm_R_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Uarm_R_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Uarm_R_01_theme_01",Uarm_R_01_theme_01,"bodyparts/theme_01/Uarm_R_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/Farm_R_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Farm_R_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Farm_R_01_theme_01",Farm_R_01_theme_01,"bodyparts/theme_01/Farm_R_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/hand_R_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	hand_R_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["hand_R_01_theme_01",hand_R_01_theme_01,"bodyparts/theme_01/hand_R_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/shoulder_L_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	shoulder_L_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["shoulder_L_01_theme_01",shoulder_L_01_theme_01,"bodyparts/theme_01/shoulder_L_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/Uarm_L_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Uarm_L_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Uarm_L_01_theme_01",Uarm_L_01_theme_01,"bodyparts/theme_01/Uarm_L_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/Farm_L_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Farm_L_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Farm_L_01_theme_01",Farm_L_01_theme_01,"bodyparts/theme_01/Farm_L_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/hand_L_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	hand_L_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["hand_L_01_theme_01",hand_L_01_theme_01,"bodyparts/theme_01/hand_L_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/hip_R_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	hip_R_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["hip_R_01_theme_01",hip_R_01_theme_01,"bodyparts/theme_01/hip_R_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/Uleg_R_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Uleg_R_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Uleg_R_01_theme_01",Uleg_R_01_theme_01,"bodyparts/theme_01/Uleg_R_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/Lleg_R_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Lleg_R_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Lleg_R_01_theme_01",Lleg_R_01_theme_01,"bodyparts/theme_01/Lleg_R_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/foot_R_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	foot_R_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["foot_R_01_theme_01",foot_R_01_theme_01,"bodyparts/theme_01/foot_R_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/toe_R_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	toe_R_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["toe_R_01_theme_01",toe_R_01_theme_01,"bodyparts/theme_01/toe_R_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/hip_L_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	hip_L_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["hip_L_01_theme_01",hip_L_01_theme_01,"bodyparts/theme_01/hip_L_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/Uleg_L_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Uleg_L_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Uleg_L_01_theme_01",Uleg_L_01_theme_01,"bodyparts/theme_01/Uleg_L_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/Lleg_L_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Lleg_L_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Lleg_L_01_theme_01",Lleg_L_01_theme_01,"bodyparts/theme_01/Lleg_L_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/foot_L_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	foot_L_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["foot_L_01_theme_01",foot_L_01_theme_01,"bodyparts/theme_01/foot_L_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/theme_01/toe_L_01_theme_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	toe_L_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["toe_L_01_theme_01",toe_L_01_theme_01,"bodyparts/theme_01/toe_L_01_theme_01.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
}