function exe_add_refsigns500(_initial_pm)
{
	//3d obj start
	var _temp_o = {};
	
	var _push_pos = [	_initial_pm[0] * map3d.world_map_bigchunks.single_bigchunk_shift,
						_initial_pm[1] * map3d.world_map_bigchunks.single_bigchunk_shift,
						_initial_pm[2] * map3d.world_map_bigchunks.single_bigchunk_shift,
						180,0,0,	1,1,1];
	var _posMat = exe_return_initial_posMat(_push_pos);

	var _str = "refsigns500_";
	_str += string(_initial_pm[0]) + "_";
	_str += string(_initial_pm[1]) + "_"; 
	_str += string(_initial_pm[2]);

	_temp_o.character_sheet = {		name: _str, hash: exe_return_hash(	string_join("|",current_time,date_current_datetime(),string(string_length(map3d)))	),
									file_name : _str + ".txt", file_directory : "terrain/",};
	_temp_o.control_method = {};
	//_temp_o.camera =[];
	
	struct_set(_temp_o.character_sheet, "render_pass_sorting",		"static_minor"	);
	struct_set(_temp_o.character_sheet, "items_swaps",		"ref500_items_swaps_01"	);
	
	_temp_o.part_naming =						[	"main_part"											];
	_temp_o.part_dependency =					[];
	_temp_o.part_posMat =						[	_posMat												];
	_temp_o.part_vsubmit =						[	exe_return_v_submit(_posMat,1)						];
			
	_temp_o.part_texture_load_reference =		[	["tex_body_01_nomaterial","tex_normal_z"]			];
	_temp_o.part_vbuff_load_reference =			[	["vbuff_refsigns500","1.","N"]						];
	_temp_o.part_texture_shader_setings =		[	[0.,1.,0.]			];	//material true/false
	
	_temp_o.part_vbuff_colider_load_reference = [	["vbuff_empty","1.","N"]						];
	
	_temp_o.part_texture_helper_load_reference =[	["tex_helpers","tex_normal_z"]						];
	_temp_o.part_vbuff_helper_load_reference =	[	["vbuff_dir_arrow","5.","N"]						];
													//vbuff,scale,mirror rotation
													
	_temp_o.part_dependency_load_reference =	[	["main_part",[[0.,0.,0.,0.,0.,0.,0.,0.,0.]]	]		];
	
	_temp_o.part_detector_lines_load_reference = [];
	
	//ok//var _part_texture : [],//show,helper, in future lighting, selection
	//ok//var _helper_texture : [],
	
	//ok//var _part_show_source : [],
	//ok//var _part_show_curent : [],
			
	//ok//var _part_helpers_source : [],
	//ok//var _part_helpers_curent : [],
			
	_temp_o.part_colision_method =				[	"solid"											];
	//ok//var _part_colisions_source : [],
	//ok//var _part_colisions_curent : [],
			
	//var _part_detection_method : [],
	//3d obj end
	
	return(_temp_o);
}