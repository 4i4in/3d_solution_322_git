function exe_add_camera_01(_initial_pm,_ini_opt)
{
	//3d obj start
	var _temp_o = {};
	
	var _posMat = exe_initialize_posmat(_initial_pm);

	_temp_o.character_sheet = {		name: "camera_01", hash: exe_return_hash(	string_join("|",current_time,date_current_datetime(),string(string_length(map3d)))	),
									file_name : "camera_01.txt", file_directory : "controlled/",
									load_controler : "mouse_keyboard", load_phy : ["inertial_move",[0.01,5.,0.05]], load_camera : [1,"cam1","main_part","hard"]	};
	_temp_o.control_method = exe_return_controller(_temp_o.character_sheet.load_controler);
	_temp_o.control_method = exe_add_phy(_temp_o.control_method,_temp_o.character_sheet.load_phy);
	_temp_o.control_method = exe_add_cam(_temp_o.control_method,_temp_o.character_sheet.load_camera);
	
	struct_set(_temp_o.character_sheet,	"colider_impostor",  "ignore_me");
	
	_temp_o.part_naming =						[	"main_part"		];
	_temp_o.part_dependency =					[	"main_part"		];
	_temp_o.part_posMat =						[	_posMat			];
	_temp_o.part_vsubmit =						[	exe_return_v_submit(_posMat,1)	];
			
	_temp_o.part_texture_load_reference =		[	["tex_helpers","tex_normal_z"]			];
	_temp_o.part_vbuff_load_reference =			[	["vbuff_camera_01","N","N"]				];
	_temp_o.part_texture_shader_setings =		[	[0.,1.,1.]			];	//material true/false
	
	_temp_o.part_vbuff_colider_load_reference = [	["","N","N"]				];
	
	_temp_o.part_texture_helper_load_reference =[	["tex_helpers","tex_normal_z"]			];
	_temp_o.part_vbuff_helper_load_reference =	[	["vbuff_dir_arrow","5.","N"]					];
													//vbuff,scale,mirror rotation
													
	_temp_o.part_dependency_load_reference =	[	["main_part",[[0.,0.,0.,0.,0.,0.,0.,0.,0.]]	],	];
	
	_temp_o.part_detector_lines_load_reference = [];
	
	//ok//var _part_texture : [],//show,helper, in future lighting, selection
	//ok//var _helper_texture : [],
	
	//ok//var _part_show_source : [],
	//ok//var _part_show_curent : [],
			
	//ok//var _part_helpers_source : [],
	//ok//var _part_helpers_curent : [],
			
	_temp_o.part_colision_method =				[	"solid"			];
	//ok//var _part_colisions_source : [],
	//ok//var _part_colisions_curent : [],
			
	//var _part_detection_method : [],
	//3d obj end
	
	//turn on cam:
	
	if _ini_opt != undefined	{_temp_o.control_method.active[0] = _ini_opt;};
	
	return(_temp_o);
}