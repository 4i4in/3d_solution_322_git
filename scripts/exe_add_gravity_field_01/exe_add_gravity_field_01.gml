function exe_add_gravity_field_01(_initial_pm)
{
	//3d obj start
	var _temp_o = {};
	
	var _posMat = exe_initialize_posmat(_initial_pm);

	if array_length(_initial_pm) == 16	
		{	
			var _delta = [0,0,0];
			//_delta = exe_move_fb(_delta,_posMat,0.);
			//_delta = exe_move_updown(_delta,_posMat,0.);
			//_delta = exe_move_sides(_delta,_posMat,0.);
			_posMat = exe_delta_add_Mat(_delta,_posMat);
		};


	_temp_o.character_sheet = {		name: "gfield_01", hash: exe_return_hash(	string_join("|",current_time,date_current_datetime(),string(string_length(map3d)))	),
									file_name : "gfield_01.txt", file_directory : "controlled/",
									load_controler : "none", load_phy : ["gfield_01"], load_camera : [0,"cam2","main_part","hard"]	};
	
	//TBD
	//if struct_exists(_input, "items_swaps")		{	struct_set(_temp_o.character_sheet, "items_swaps",				variable_clone(_input.items_swaps)	);};
	//if struct_exists(_input, "anim_pack")		{	struct_set(_temp_o.character_sheet, "anim_pack",				variable_clone(_input.anim_pack)	);
	//												var _anim_cycles_str = string_replace_all(_input.anim_pack,"_pack_","_cycle_");
	//												struct_set(_temp_o.character_sheet, "anim_cycles",				variable_clone(_anim_cycles_str)	);		};
	
	struct_set(_temp_o.character_sheet, "items_swaps",		"gfield1_items_swaps_01"	);
	struct_set(_temp_o.character_sheet, "anim_pack",		"gfield1_anim_pack_01"	);
	struct_set(_temp_o.character_sheet, "anim_cycles",		"gfield1_anim_cycle_01"	);
	struct_set(_temp_o.character_sheet, "detector_pack",	"gfield1_detector_lines_pack_01"	);
	
	//var _template = reference_struct.humanoid_sceleton_scale_1_part_set;
	
	//_temp_o.part_naming = variable_clone(_template.part_naming);
	//_temp_o.part_dependency =					[];//arrays of dependecy
	//_temp_o.part_posMat =	[_posMat];
	//_temp_o.part_vsubmit =	[	exe_return_v_submit(_posMat,1)];
	
	
	_temp_o.control_method = exe_return_controller(_temp_o.character_sheet.load_controler);
	_temp_o.control_method = exe_add_phy(_temp_o.control_method,_temp_o.character_sheet.load_phy);
	_temp_o.control_method = exe_add_cam(_temp_o.control_method,_temp_o.character_sheet.load_camera);
	
	_temp_o.part_naming =						[	"main_part",											];
	_temp_o.part_dependency =					[	"main_part",											];
	_temp_o.part_posMat =						[	_posMat,												];
	_temp_o.part_vsubmit =						[	exe_return_v_submit(_posMat,1),							];
			
	_temp_o.part_texture_load_reference =		[	["tex_body_01_nomaterial","tex_normal_z"],				];
	_temp_o.part_vbuff_load_reference =			[	["vbuff_gfield_1x1x1_show","1.","N"],					];
	_temp_o.part_texture_shader_setings =		[	[1.,1.,0.],												];	//material true/false
	
	_temp_o.part_vbuff_colider_load_reference = [	["vbuff_gfield_1x1x1_colider","1.","N"],				];
	
	_temp_o.part_texture_helper_load_reference =[	["tex_helpers","tex_normal_z"],							];
	_temp_o.part_vbuff_helper_load_reference =	[	["vbuff_dir_arrow","5.","N"],							];
													//vbuff,scale,mirror rotation
													
	_temp_o.part_dependency_load_reference =	[	["main_part",[[0.,0.,0.,0.,0.,0.,0.,0.,0.]]	],			];
	
	_temp_o.part_detector_lines_load_reference = [];
	
	//ok//var _part_texture : [],//show,helper, in future lighting, selection
	//ok//var _helper_texture : [],
	
	//ok//var _part_show_source : [],
	//ok//var _part_show_curent : [],
			
	//ok//var _part_helpers_source : [],
	//ok//var _part_helpers_curent : [],
			
	_temp_o.part_colision_method =				[		"activator"		];
	//ok//var _part_colisions_source : [],
	//ok//var _part_colisions_curent : [],
			
	//var _part_detection_method : [],
	//3d obj end
	
	//turn on cam:
	_temp_o.control_method.active[0] = 0;
	
	
	return(_temp_o);
}