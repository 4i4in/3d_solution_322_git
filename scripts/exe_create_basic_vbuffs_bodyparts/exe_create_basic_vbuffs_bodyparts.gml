function exe_create_basic_vbuffs_bodyparts()
{
	//bodyparts
	var temp_buff_data = buffer_load("bodyparts/basic/ass_pivot_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	ass_pivot_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["ass_pivot_01_basic",ass_pivot_01_basic,"bodyparts/basic/ass_pivot_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/spine_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	spine_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["spine_01_basic",spine_01_basic,"bodyparts/basic/spine_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/spine_02_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	spine_02_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["spine_02_basic",spine_02_basic,"bodyparts/basic/spine_02_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/neck_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	neck_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["neck_01_basic",neck_01_basic,"bodyparts/basic/neck_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/head_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	head_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["head_01_basic",head_01_basic,"bodyparts/basic/head_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/jaw_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	jaw_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["jaw_01_basic",jaw_01_basic,"bodyparts/basic/jaw_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/shoulder_R_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	shoulder_R_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["shoulder_R_01_basic",shoulder_R_01_basic,"bodyparts/basic/shoulder_R_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/Uarm_R_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Uarm_R_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Uarm_R_01_basic",Uarm_R_01_basic,"bodyparts/basic/Uarm_R_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/Farm_R_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Farm_R_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Farm_R_01_basic",Farm_R_01_basic,"bodyparts/basic/Farm_R_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/hand_R_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	hand_R_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["hand_R_01_basic",hand_R_01_basic,"bodyparts/basic/hand_R_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/shoulder_L_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	shoulder_L_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["shoulder_L_01_basic",shoulder_L_01_basic,"bodyparts/basic/shoulder_L_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/Uarm_L_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Uarm_L_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Uarm_L_01_basic",Uarm_L_01_basic,"bodyparts/basic/Uarm_L_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/Farm_L_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Farm_L_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Farm_L_01_basic",Farm_L_01_basic,"bodyparts/basic/Farm_L_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/hand_L_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	hand_L_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["hand_L_01_basic",hand_L_01_basic,"bodyparts/basic/hand_L_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/hip_R_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	hip_R_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["hip_R_01_basic",hip_R_01_basic,"bodyparts/basic/hip_R_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/Uleg_R_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Uleg_R_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Uleg_R_01_basic",Uleg_R_01_basic,"bodyparts/basic/Uleg_R_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/Lleg_R_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Lleg_R_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Lleg_R_01_basic",Lleg_R_01_basic,"bodyparts/basic/Lleg_R_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/foot_R_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	foot_R_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["foot_R_01_basic",foot_R_01_basic,"bodyparts/basic/foot_R_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/toe_R_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	toe_R_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["toe_R_01_basic",toe_R_01_basic,"bodyparts/basic/toe_R_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/hip_L_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	hip_L_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["hip_L_01_basic",hip_L_01_basic,"bodyparts/basic/hip_L_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/Uleg_L_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Uleg_L_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Uleg_L_01_basic",Uleg_L_01_basic,"bodyparts/basic/Uleg_L_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/Lleg_L_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Lleg_L_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["Lleg_L_01_basic",Lleg_L_01_basic,"bodyparts/basic/Lleg_L_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/foot_L_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	foot_L_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["foot_L_01_basic",foot_L_01_basic,"bodyparts/basic/foot_L_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	var temp_buff_data = buffer_load("bodyparts/basic/toe_L_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	toe_L_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	var _lpack = ["toe_L_01_basic",toe_L_01_basic,"bodyparts/basic/toe_L_01_basic.vbuff"]; array_push(all_vbuff_list,_lpack);
	
	
}