function exe_add_tree_01(_initial_pm)
{
	//3d obj start
	var _temp_o = {};
	
	var _posMat = exe_initialize_posmat(_initial_pm);
	
	

	_temp_o.character_sheet = {		name: "tree_swapable_01", hash: exe_return_hash(	string_join("|",current_time,date_current_datetime(),string(string_length(map3d)))	),
									file_name : "tree_swapable_01.txt", file_directory : "terrain/",};
	_temp_o.control_method = {};
	//_temp_o.camera =[];
	
	struct_set(_temp_o.character_sheet, "render_pass_sorting",		"static_minor"	);
	struct_set(_temp_o.character_sheet, "items_swaps",		"tree_items_swaps_01"	);
	
	_temp_o.part_naming =						[	"main_part",									"leaves_01"											];
	_temp_o.part_dependency =					[];
	_temp_o.part_posMat =						[	_posMat,										"set_me"											];
	_temp_o.part_vsubmit =						[	exe_return_v_submit(_posMat,1),					"set_me"											];
			
	_temp_o.part_texture_load_reference =		[	["tex_body_01_nomaterial","tex_normal_z"],		["tex_body_01_nomaterial","tex_normal_z"]			];
	_temp_o.part_vbuff_load_reference =			[	["tree_trunk_01","1.","N"],						["tree_leaves_01","1.","N"]							];
	_temp_o.part_texture_shader_setings =		[	[7.,1.,0.],										[7.,2.,0.]												];	//material true/false
	
	_temp_o.part_vbuff_colider_load_reference = [	["tree_trunk_01_colider","1.","N"],				["vbuff_empty","1.","N"]							];
	
	_temp_o.part_texture_helper_load_reference =[	["tex_helpers","tex_normal_z"],					["tex_helpers","tex_normal_z"]						];
	_temp_o.part_vbuff_helper_load_reference =	[	["vbuff_dir_arrow","5.","N"],					["vbuff_dir_arrow","2.","N"]						];
													//vbuff,scale,mirror rotation
													
	_temp_o.part_dependency_load_reference =	[	["main_part",[[0.,0.,0.,0.,0.,0.,0.,0.,0.]]	],	["main_part",[[0.,0.,0.,0.,0.,0.,0.,0.,0.]]	]		];
	
	_temp_o.part_detector_lines_load_reference = [];
	
	//ok//var _part_texture : [],//show,helper, in future lighting, selection
	//ok//var _helper_texture : [],
	
	//ok//var _part_show_source : [],
	//ok//var _part_show_curent : [],
			
	//ok//var _part_helpers_source : [],
	//ok//var _part_helpers_curent : [],
			
	_temp_o.part_colision_method =				[	"solid",	"solid"												];
	//ok//var _part_colisions_source : [],
	//ok//var _part_colisions_curent : [],
			
	//var _part_detection_method : [],
	//3d obj end
	
	return(_temp_o);
}