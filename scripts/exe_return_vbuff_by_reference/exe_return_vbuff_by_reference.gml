function exe_return_vbuff_by_reference(_name)
{
	switch(_name)
		{
			case "vbuff_dir_arrow":			return("vbuff_dir_arrow");		break;
			case "":						return(vbuff_empty);	break;
		}
	
	var _buff_found = -1;
	for(var _ii = 0; _ii < array_length(all_vbuff_list); _ii++)
		{
			if all_vbuff_list[_ii][0] == _name	
				{
					return(all_vbuff_list[_ii][1]);
					break;
				}
		}
show_debug_message("unreturned, going to switch in exe_return_vbuff_by_reference; name : " + string(_name));
	switch(_name)
		{
			case "vbuff_dir_arrow":						_buff_found = "vbuff_dir_arrow";		break;
			
		//dooor 1
			case "vbuff_doors_1":						_buff_found = vbuff_doors_1;		break;//brick colider
			case "vbuff_doors_1a":						_buff_found = vbuff_doors_1a;		break;//orange
			
			case "vbuff_doors1_activator2_small":		_buff_found = vbuff_doors1_activator2_small;	break;
			
			case "vbuff_doors_1b_colider_around":		_buff_found = vbuff_doors_1b_colider_around;	break;
			case "vbuff_doors_1b_show_around":			_buff_found = vbuff_doors_1b_show_around;	break;
			case "vbuff_doors_1b":						_buff_found = vbuff_doors_1b;	break;//wall
			
			case "vbuff_doors_1d_show_around":			_buff_found = vbuff_doors_1d_show_around;	break;//palisade
			
			case "vbuff_doors_1b_colider_around_small":	_buff_found = vbuff_doors_1b_colider_around_small;	break;
			case "vbuff_doors_1b_show_around_small":	_buff_found = vbuff_doors_1b_show_around_small;	break;
			
			case "vbuff_doors_1c_colider":				_buff_found = vbuff_doors_1c_colider;	break;
			case "vbuff_doors_1c":						_buff_found = vbuff_doors_1c;	break;//mesh
			
			case "vbuff_doors_1d":						_buff_found = vbuff_doors_1d;	break;//palisade woodwall
			case "vbuff_doors_1d_show_around_small":	_buff_found = vbuff_doors_1d_show_around_small;	break;
		//==========================
		
			case "vbuff_stone_01_show":					_buff_found = vbuff_stone_01_show;		break;
			case "vbuff_stone_01_colider":				_buff_found = vbuff_stone_01_colider;		break;
			case "vbuff_stone_02_show":					_buff_found = vbuff_stone_02_show;		break;
			case "vbuff_stone_02_colider":				_buff_found = vbuff_stone_02_colider;		break;
			case "vbuff_stone_03_show":					_buff_found = vbuff_stone_03_show;		break;
			case "vbuff_stone_03_colider":				_buff_found = vbuff_stone_03_colider;		break;
			case "vbuff_stone_04_show":					_buff_found = vbuff_stone_04_show;		break;
			case "vbuff_stone_04_colider":				_buff_found = vbuff_stone_04_colider;		break;
			case "vbuff_stone_05_show":					_buff_found = vbuff_stone_05_show;		break;
			case "vbuff_stone_05_colider":				_buff_found = vbuff_stone_05_colider;		break;
			case "vbuff_stone_06_show":					_buff_found = vbuff_stone_06_show;		break;
			case "vbuff_stone_06_colider":				_buff_found = vbuff_stone_06_colider;		break;
			
			
			case "vbuff_floor_3x3_01_colider":			_buff_found = vbuff_floor_3x3_01_colider;		break;
			case "vbuff_floor_3x3_01_show":				_buff_found = vbuff_floor_3x3_01_show;		break;
			case "vbuff_floor_5x5_01_colider":			_buff_found = vbuff_floor_5x5_01_colider;		break;
			case "vbuff_floor_5x5_01_show":				_buff_found = vbuff_floor_5x5_01_show;		break;
			case "vbuff_floor_5x5_02_colider":			_buff_found = vbuff_floor_5x5_02_colider;		break;
			case "vbuff_floor_5x5_02_show":				_buff_found = vbuff_floor_5x5_02_show;		break;
			case "vbuff_floor_5x5_03_colider":			_buff_found = vbuff_floor_5x5_03_colider;		break;
			case "vbuff_floor_5x5_03_show":				_buff_found = vbuff_floor_5x5_03_show;		break;
			case "vbuff_floor_5x5_03a_show":			_buff_found = vbuff_floor_5x5_03a_show;		break;
			case "vbuff_floor_d5_01_colider":			_buff_found = vbuff_floor_d5_01_colider;		break;
			case "vbuff_floor_d5_01_show":				_buff_found = vbuff_floor_d5_01_show;		break;
			
			
			case "vbuff_pilar_01_show":					_buff_found = vbuff_pilar_01_show;		break;
			case "vbuff_pilar_01_colider":				_buff_found = vbuff_pilar_01_colider;		break;
			case "vbuff_pilar_02_show":					_buff_found = vbuff_pilar_02_show;		break;
			case "vbuff_pilar_02_colider":				_buff_found = vbuff_pilar_02_colider;		break;
			case "vbuff_pilar_03_show":					_buff_found = vbuff_pilar_03_show;		break;
			case "vbuff_pilar_03_colider":				_buff_found = vbuff_pilar_03_colider;		break;
		
		//decorations
			case "vbuff_deco_ent_5x5_01":				_buff_found = vbuff_deco_ent_5x5_01;		break;
			case "vbuff_deco_ent_5x5_03":				_buff_found = vbuff_deco_ent_5x5_03;		break;
			case "vbuff_deco_floor_5x5_01":				_buff_found = vbuff_deco_floor_5x5_01;		break;
			case "vbuff_deco_floor_5x5_03":				_buff_found = vbuff_deco_floor_5x5_03;		break;
			
			case "vbuff_deadend_2x2_01_colider":		_buff_found = vbuff_deadend_2x2_01_colider;		break;
			case "vbuff_deadend_2x2_01_show":			_buff_found = vbuff_deadend_2x2_01_show;		break;//stonewall
			case "vbuff_deadend_2x2_03_show":			_buff_found = vbuff_deadend_2x2_03_show;		break;//woodwall
		//===============
			
		//helpers paint biome and stuff
			case "vbuff_helper_gras_01_d100":			_buff_found = vbuff_helper_gras_01_d100;		break;
			case "vbuff_helper_gras_01_d250":			_buff_found = vbuff_helper_gras_01_d250;		break;
			case "vbuff_helper_gras_01_d500":			_buff_found = vbuff_helper_gras_01_d500;		break;
		//===============
		
		//openwall
			case "vbuff_wall_01_w4h3_sdoor_show":		_buff_found = vbuff_wall_01_w4h3_sdoor_show;		break;
			case "vbuff_wall_03_w4h3_sdoor_show":		_buff_found = vbuff_wall_03_w4h3_sdoor_show;		break;
			case "vbuff_wall_01_w4h3_sdoor_colider":	_buff_found = vbuff_wall_01_w4h3_sdoor_colider;		break;
			case "vbuff_wall_01_w4h3_show":				_buff_found = vbuff_wall_01_w4h3_show;		break;
			case "vbuff_wall_03_w4h3_show":				_buff_found = vbuff_wall_03_w4h3_show;		break;
			case "vbuff_wall_01_w4h3_colider":			_buff_found = vbuff_wall_01_w4h3_colider;		break;
			case "vbuff_wall_01_w4h3_broken_show":		_buff_found = vbuff_wall_01_w4h3_broken_show;		break;
			case "vbuff_wall_03_w4h3_broken_show":		_buff_found = vbuff_wall_03_w4h3_broken_show;		break;
			case "vbuff_wall_01_w4h3_broken_colider":	_buff_found = vbuff_wall_01_w4h3_broken_colider;		break;
		//===============
		
		//entrances
			case "vbuff_entrance_01_5x5_colider":		_buff_found = vbuff_entrance_01_5x5_colider;		break;
			case "vbuff_entrance_01_5x5_show":			_buff_found = vbuff_entrance_01_5x5_show;		break;
			case "vbuff_entrance_02_5x5_colider":		_buff_found = vbuff_entrance_02_5x5_colider;		break;
			case "vbuff_entrance_02_5x5_show":			_buff_found = vbuff_entrance_02_5x5_show;		break;
			case "vbuff_entrance_03_5x5_colider":		_buff_found = vbuff_entrance_03_5x5_colider;		break;
			case "vbuff_entrance_03_5x5_show":			_buff_found = vbuff_entrance_03_5x5_show;		break;
		//===============
		//chambers
			case "vbuff_chamber_3x3h1_colider":			_buff_found = vbuff_chamber_3x3h1_colider;		break;
			case "vbuff_chamber_3x3h1_show":			_buff_found = vbuff_chamber_3x3h1_show;		break;
		//===============
		//corridors
			case "vbuff_corridor_01_w3d1_collider":		_buff_found = vbuff_corridor_01_w3d1_collider;		break;
			case "vbuff_corridor_01_w3d1_show":			_buff_found = vbuff_corridor_01_w3d1_show;		break;
			case "vbuff_corridor_01up_w3d1_collider":	_buff_found = vbuff_corridor_01up_w3d1_collider;		break;
			case "vbuff_corridor_01up_w3d1_show":		_buff_found = vbuff_corridor_01up_w3d1_show;		break;
			case "vbuff_corridor_01down_w3d1_collider":	_buff_found = vbuff_corridor_01down_w3d1_collider;		break;
			case "vbuff_corridor_01down_w3d1_show":		_buff_found = vbuff_corridor_01down_w3d1_show;		break;
		//===============
		//grass
			case "vbuff_bush_01":						_buff_found = vbuff_bush_01;		break;
			case "vbuff_bush_02":						_buff_found = vbuff_bush_02;		break;
			case "vbuff_bush_03":						_buff_found = vbuff_bush_03;		break;
			case "vbuff_bush_04":						_buff_found = vbuff_bush_04;		break;
			case "vbuff_bush_05":						_buff_found = vbuff_bush_05;		break;
			
			case "vbuff_grass_01":						_buff_found = vbuff_grass_01;		break;
			case "vbuff_grass_01a":						_buff_found = vbuff_grass_01a;		break;
			case "vbuff_grass_02":						_buff_found = vbuff_grass_02;		break;
			case "vbuff_grass_02a":						_buff_found = vbuff_grass_02a;		break;
			case "vbuff_grass_03":						_buff_found = vbuff_grass_03;		break;
			case "vbuff_grass_03a":						_buff_found = vbuff_grass_03a;		break;
			case "vbuff_grass_04":						_buff_found = vbuff_grass_04;		break;
			case "vbuff_grass_04a":						_buff_found = vbuff_grass_04a;		break;
			case "vbuff_grass_05":						_buff_found = vbuff_grass_05;		break;
			case "vbuff_grass_05a":						_buff_found = vbuff_grass_05a;		break;
			case "vbuff_grass_06":						_buff_found = vbuff_grass_06;		break;
			case "vbuff_grass_06a":						_buff_found = vbuff_grass_06a;		break;
			case "vbuff_grass_07":						_buff_found = vbuff_grass_07;		break;
			case "vbuff_grass_07a":						_buff_found = vbuff_grass_07a;		break;
			case "vbuff_grass_08":						_buff_found = vbuff_grass_08;		break;
			case "vbuff_grass_08a":						_buff_found = vbuff_grass_08a;		break;
			case "vbuff_grass_09":						_buff_found = vbuff_grass_09;		break;
			case "vbuff_grass_09a":						_buff_found = vbuff_grass_09a;		break;
			case "vbuff_grass_10":						_buff_found = vbuff_grass_10;		break;
			case "vbuff_grass_10a":						_buff_found = vbuff_grass_10a;		break;
			case "vbuff_grass_11":						_buff_found = vbuff_grass_11;		break;
			case "vbuff_grass_11a":						_buff_found = vbuff_grass_11a;		break;
			case "vbuff_grass_12":						_buff_found = vbuff_grass_12;		break;
			case "vbuff_grass_12a":						_buff_found = vbuff_grass_12a;		break;
			case "vbuff_grass_13":						_buff_found = vbuff_grass_13;		break;
			case "vbuff_grass_13a":						_buff_found = vbuff_grass_13a;		break;
			
			case "vbuff_grass_14":						_buff_found = vbuff_grass_14;		break;
			case "vbuff_grass_15":						_buff_found = vbuff_grass_15;		break;
			
			case "vbuff_grass_16":						_buff_found = vbuff_grass_16;		break;
			case "vbuff_grass_16a":						_buff_found = vbuff_grass_16a;		break;
			case "vbuff_grass_17":						_buff_found = vbuff_grass_17;		break;
			case "vbuff_grass_17a":						_buff_found = vbuff_grass_17a;		break;
			case "vbuff_grass_18":						_buff_found = vbuff_grass_18;		break;
			case "vbuff_grass_18a":						_buff_found = vbuff_grass_18a;		break;
			case "vbuff_grass_19":						_buff_found = vbuff_grass_19;		break;
			case "vbuff_grass_19a":						_buff_found = vbuff_grass_19a;		break;
			case "vbuff_grass_19b":						_buff_found = vbuff_grass_19b;		break;
			
			case "vbuff_grass_20":						_buff_found = vbuff_grass_20;		break;
			case "vbuff_grass_20a":						_buff_found = vbuff_grass_20a;		break;
			case "vbuff_grass_20b":						_buff_found = vbuff_grass_20b;		break;
			case "vbuff_grass_20c":						_buff_found = vbuff_grass_20c;		break;
			
			case "vbuff_grass_21":						_buff_found = vbuff_grass_21;		break;
			case "vbuff_grass_21a":						_buff_found = vbuff_grass_21a;		break;
			case "vbuff_grass_21b":						_buff_found = vbuff_grass_21b;		break;
			case "vbuff_grass_21c":						_buff_found = vbuff_grass_21c;		break;
			case "vbuff_grass_21d":						_buff_found = vbuff_grass_21d;		break;
			
			case "vbuff_grass_22":						_buff_found = vbuff_grass_22;		break;
			case "vbuff_grass_22a":						_buff_found = vbuff_grass_22a;		break;
			case "vbuff_grass_22b":						_buff_found = vbuff_grass_22b;		break;
			case "vbuff_grass_22c":						_buff_found = vbuff_grass_22c;		break;
			case "vbuff_grass_22d":						_buff_found = vbuff_grass_22d;		break;
			
			case "vbuff_grass_23":						_buff_found = vbuff_grass_23;		break;
			case "vbuff_grass_23a":						_buff_found = vbuff_grass_23a;		break;
			case "vbuff_grass_23b":						_buff_found = vbuff_grass_23b;		break;
			case "vbuff_grass_23c":						_buff_found = vbuff_grass_23c;		break;
			
			case "vbuff_grass_24":						_buff_found = vbuff_grass_24;		break;
			case "vbuff_grass_24a":						_buff_found = vbuff_grass_24a;		break;
			case "vbuff_grass_24b":						_buff_found = vbuff_grass_24b;		break;
			case "vbuff_grass_24c":						_buff_found = vbuff_grass_24c;		break;
			case "vbuff_grass_24d":						_buff_found = vbuff_grass_24d;		break;
			
			case "vbuff_grass_25":						_buff_found = vbuff_grass_25;		break;
			case "vbuff_grass_25a":						_buff_found = vbuff_grass_25a;		break;
		//===============
		//wallgrass
			case "vbuff_diagup_grass_01":				_buff_found = vbuff_diagup_grass_01;		break;
			case "vbuff_diagup_grass_02":				_buff_found = vbuff_diagup_grass_02;		break;
			case "vbuff_diagup_grass_03":				_buff_found = vbuff_diagup_grass_03;		break;
		//===============
		//wallgrass
			case "vbuff_wallgrass_01":					_buff_found = vbuff_wallgrass_01;		break;
			case "vbuff_wallgrass_02":					_buff_found = vbuff_wallgrass_02;		break;
			case "vbuff_wallgrass_03":					_buff_found = vbuff_wallgrass_03;		break;
			case "vbuff_wallgrass_04":					_buff_found = vbuff_wallgrass_04;		break;
			case "vbuff_wallgrass_04a":					_buff_found = vbuff_wallgrass_04a;		break;
			case "vbuff_wallgrass_05":					_buff_found = vbuff_wallgrass_05;		break;
			case "vbuff_wallgrass_05a":					_buff_found = vbuff_wallgrass_05a;		break;
			case "vbuff_wallgrass_06":					_buff_found = vbuff_wallgrass_06;		break;
			case "vbuff_wallgrass_07":					_buff_found = vbuff_wallgrass_07;		break;
			case "vbuff_wallgrass_07a":					_buff_found = vbuff_wallgrass_07a;		break;
			case "vbuff_wallgrass_08":					_buff_found = vbuff_wallgrass_08;		break;
		//===============
		//wallroot
			case "vbuff_wallroot_01":					_buff_found = vbuff_wallroot_01;		break;
			case "vbuff_wallroot_02":					_buff_found = vbuff_wallroot_02;		break;
			case "vbuff_wallroot_03":					_buff_found = vbuff_wallroot_03;		break;
			case "vbuff_wallroot_04":					_buff_found = vbuff_wallroot_04;		break;
			case "vbuff_wallroot_05":					_buff_found = vbuff_wallroot_05;		break;
		//===============
		//roofroot
			case "vbuff_roofroot_01":					_buff_found = vbuff_roofroot_01;		break;
			case "vbuff_roofroot_02":					_buff_found = vbuff_roofroot_02;		break;
			case "vbuff_roofroot_03":					_buff_found = vbuff_roofroot_03;		break;
		//===============
		//tree
			case "tree_trunk_01":						_buff_found = tree_trunk_01;		break;
			case "tree_trunk_01_colider":				_buff_found = tree_trunk_01_colider;		break;
			case "tree_leaves_01":						_buff_found = tree_leaves_01;		break;
			case "tree_leaves_01_hires":				_buff_found = tree_leaves_01_hires;		break;
			case "tree_leaves_01a_hires":				_buff_found = tree_leaves_01a_hires;		break;
			case "tree_trunk_02":						_buff_found = tree_trunk_02;		break;
			case "tree_trunk_02_colider":				_buff_found = tree_trunk_02_colider;		break;
			case "tree_leaves_02":						_buff_found = tree_leaves_02;		break;
		//phyfields
			case "vbuff_gfield_1x1x1_colider":			_buff_found = vbuff_gfield_1x1x1_colider;	break;
			case "vbuff_gfield_1x1x1_show":				_buff_found = vbuff_gfield_1x1x1_show;	break;
			
			case "vbuff_gfield_2x2x1_colider":			_buff_found = vbuff_gfield_2x2x1_colider;	break;
			case "vbuff_gfield_2x2x1_show":				_buff_found = vbuff_gfield_2x2x1_show;	break;
			
			case "vbuff_gfield_2x2x2_colider":			_buff_found = vbuff_gfield_2x2x2_colider;	break;
			case "vbuff_gfield_2x2x2_show":				_buff_found = vbuff_gfield_2x2x2_show;	break;
			
			case "vbuff_gfield_3x3x1_colider":			_buff_found = vbuff_gfield_3x3x1_colider;	break;
			case "vbuff_gfield_3x3x1_show":				_buff_found = vbuff_gfield_3x3x1_show;	break;
			
			case "vbuff_gfield_4x4x1_colider":			_buff_found = vbuff_gfield_4x4x1_colider;	break;
			case "vbuff_gfield_4x4x1_show":				_buff_found = vbuff_gfield_4x4x1_show;	break;
			
			case "vbuff_gfield_5x5x1_colider":			_buff_found = vbuff_gfield_5x5x1_colider;	break;
			case "vbuff_gfield_5x5x1_show":				_buff_found = vbuff_gfield_5x5x1_show;	break;
		//===============	
			case "vbuff_camera_01":						_buff_found = vbuff_camera_01;	break;
			case "vbuff_pntrdir_01":					_buff_found = vbuff_pntrdir_01;	break;
			case "vbuff_big_pointer":					_buff_found = vbuff_big_pointer;	break;
			case "vbuff_pointer_orange":				_buff_found = vbuff_pointer_orange;	break;
			case "vbuff_pointer_green":					_buff_found = vbuff_pointer_green;	break;
			case "main_part_01":						_buff_found = main_part_01;	break;
			case "main_part_low":						_buff_found = main_part_low;	break;
			case "main_part_total":						_buff_found = main_part_total;	break;
			
			case "vbuff_direction_sign_01":				_buff_found = vbuff_direction_sign_01;	break;
			
			case "vbuff_conector_1":					_buff_found = vbuff_conector_1;	break;
			case "vbuff_conector_2":					_buff_found = vbuff_conector_2;	break;
			case "vbuff_conector_3":					_buff_found = vbuff_conector_3;	break;
			case "vbuff_conector_4":					_buff_found = vbuff_conector_4;	break;
			case "vbuff_conector_5":					_buff_found = vbuff_conector_5;	break;
			case "vbuff_conector_6":					_buff_found = vbuff_conector_6;	break;
			case "vbuff_conector_7":					_buff_found = vbuff_conector_7;	break;
			case "vbuff_conector_8":					_buff_found = vbuff_conector_8;	break;
			
			case "vbuff_dir_arrow2":					_buff_found = vbuff_dir_arrow2;	break;
			case "vbuff_dir_arrow2_x01":				_buff_found = vbuff_dir_arrow2_x01;	break;
			case "vbuff_dir_arrow2_x05":				_buff_found = vbuff_dir_arrow2_x05;	break;
			case "vbuff_dir_arrow2_x20":				_buff_found = vbuff_dir_arrow2_x20;	break;
			
			case "vbuff_refsigns500":					_buff_found = vbuff_refsigns500;	break;
			case "vbuff_refsigns500_xyz":				_buff_found = vbuff_refsigns500_xyz;	break;
			
			case "":									_buff_found = vbuff_empty;	break;
			case "vbuff_empty":							_buff_found = vbuff_empty;	break;
			
			
			
			//body parts humanoid colider
			case "ass_pivot_01_colider":				_buff_found = ass_pivot_01_colider;	break;
			case "spine_01_colider":					_buff_found = spine_01_colider;	break;
			case "spine_02_colider":					_buff_found = spine_02_colider;	break;
			
			case "neck_01_colider":						_buff_found = neck_01_colider;	break;
			case "head_01_colider":						_buff_found = head_01_colider;	break;
			case "jaw_01_colider":						_buff_found = jaw_01_colider;		break;
			
			case "shoulder_R_01_colider":				_buff_found = shoulder_R_01_colider;	break;
			case "Uarm_R_01_colider":					_buff_found = Uarm_R_01_colider;	break;
			case "Farm_R_01_colider":					_buff_found = Farm_R_01_colider;	break;
			case "hand_R_01_colider":					_buff_found = hand_R_01_colider;	break;
			
			case "shoulder_L_01_colider":				_buff_found = shoulder_L_01_colider;	break;
			case "Uarm_L_01_colider":					_buff_found = Uarm_L_01_colider;	break;
			case "Farm_L_01_colider":					_buff_found = Farm_L_01_colider;	break;
			case "hand_L_01_colider":					_buff_found = hand_L_01_colider;	break;
			
			case "hip_R_01_colider":					_buff_found = hip_R_01_colider;	break;
			case "Uleg_R_01_colider":					_buff_found = Uleg_R_01_colider;	break;
			case "Lleg_R_01_colider":					_buff_found = Lleg_R_01_colider;	break;
			case "foot_R_01_colider":					_buff_found = foot_R_01_colider;	break;
			case "toe_R_01_colider":					_buff_found = toe_R_01_colider;	break;
			
			case "hip_L_01_colider":					_buff_found = hip_L_01_colider;	break;
			case "Uleg_L_01_colider":					_buff_found = Uleg_L_01_colider;	break;
			case "Lleg_L_01_colider":					_buff_found = Lleg_L_01_colider;	break;
			case "foot_L_01_colider":					_buff_found = foot_L_01_colider;	break;
			case "toe_L_01_colider":					_buff_found = toe_L_01_colider;	break;
			
			//body parts humanoid basic
			case "ass_pivot_01_basic":					_buff_found = ass_pivot_01_basic;	break;
			case "spine_01_basic":						_buff_found = spine_01_basic;	break;
			case "spine_02_basic":						_buff_found = spine_02_basic;	break;
			
			case "neck_01_basic":						_buff_found = neck_01_basic;	break;
			case "head_01_basic":						_buff_found = head_01_basic;	break;
			case "jaw_01_basic":						_buff_found = jaw_01_basic;		break;
			
			case "shoulder_R_01_basic":					_buff_found = shoulder_R_01_basic;	break;
			case "Uarm_R_01_basic":						_buff_found = Uarm_R_01_basic;	break;
			case "Farm_R_01_basic":						_buff_found = Farm_R_01_basic;	break;
			case "hand_R_01_basic":						_buff_found = hand_R_01_basic;	break;
			
			case "shoulder_L_01_basic":					_buff_found = shoulder_L_01_basic;	break;
			case "Uarm_L_01_basic":						_buff_found = Uarm_L_01_basic;	break;
			case "Farm_L_01_basic":						_buff_found = Farm_L_01_basic;	break;
			case "hand_L_01_basic":						_buff_found = hand_L_01_basic;	break;
			
			case "hip_R_01_basic":						_buff_found = hip_R_01_basic;	break;
			case "Uleg_R_01_basic":						_buff_found = Uleg_R_01_basic;	break;
			case "Lleg_R_01_basic":						_buff_found = Lleg_R_01_basic;	break;
			case "foot_R_01_basic":						_buff_found = foot_R_01_basic;	break;
			case "toe_R_01_basic":						_buff_found = toe_R_01_basic;	break;
			
			case "hip_L_01_basic":						_buff_found = hip_L_01_basic;	break;
			case "Uleg_L_01_basic":						_buff_found = Uleg_L_01_basic;	break;
			case "Lleg_L_01_basic":						_buff_found = Lleg_L_01_basic;	break;
			case "foot_L_01_basic":						_buff_found = foot_L_01_basic;	break;
			case "toe_L_01_basic":						_buff_found = toe_L_01_basic;	break;

			//body parts theme 01
			case "ass_pivot_01_theme_01":					_buff_found = ass_pivot_01_theme_01;	break;
			case "spine_01_theme_01":						_buff_found = spine_01_theme_01;	break;
			case "spine_02_theme_01":						_buff_found = spine_02_theme_01;	break;
			
			case "neck_01_theme_01":						_buff_found = neck_01_theme_01;	break;
			case "head_01_theme_01":						_buff_found = head_01_theme_01;	break;
			case "jaw_01_theme_01":							_buff_found = jaw_01_theme_01;		break;
			
			case "shoulder_R_01_theme_01":					_buff_found = shoulder_R_01_theme_01;	break;
			case "Uarm_R_01_theme_01":						_buff_found = Uarm_R_01_theme_01;	break;
			case "Farm_R_01_theme_01":						_buff_found = Farm_R_01_theme_01;	break;
			case "hand_R_01_theme_01":						_buff_found = hand_R_01_theme_01;	break;
			
			case "shoulder_L_01_theme_01":					_buff_found = shoulder_L_01_theme_01;	break;
			case "Uarm_L_01_theme_01":						_buff_found = Uarm_L_01_theme_01;	break;
			case "Farm_L_01_theme_01":						_buff_found = Farm_L_01_theme_01;	break;
			case "hand_L_01_theme_01":						_buff_found = hand_L_01_theme_01;	break;
			
			case "hip_R_01_theme_01":						_buff_found = hip_R_01_theme_01;	break;
			case "Uleg_R_01_theme_01":						_buff_found = Uleg_R_01_theme_01;	break;
			case "Lleg_R_01_theme_01":						_buff_found = Lleg_R_01_theme_01;	break;
			case "foot_R_01_theme_01":						_buff_found = foot_R_01_theme_01;	break;
			case "toe_R_01_theme_01":						_buff_found = toe_R_01_theme_01;	break;
			
			case "hip_L_01_theme_01":						_buff_found = hip_L_01_theme_01;	break;
			case "Uleg_L_01_theme_01":						_buff_found = Uleg_L_01_theme_01;	break;
			case "Lleg_L_01_theme_01":						_buff_found = Lleg_L_01_theme_01;	break;
			case "foot_L_01_theme_01":						_buff_found = foot_L_01_theme_01;	break;
			case "toe_L_01_theme_01":						_buff_found = toe_L_01_theme_01;	break;
			
			
			//body parts theme 02
			//case "ass_pivot_01_theme_02":					_buff_found = ass_pivot_01_theme_02;	break;
			case "spine_01_theme_02":						_buff_found = spine_01_theme_02;	break;
			case "spine_02_theme_02":						_buff_found = spine_02_theme_02;	break;
			
			case "neck_01_theme_02":						_buff_found = neck_01_theme_02;	break;
			case "neck_01_theme_02_heroic":					_buff_found = neck_01_theme_02_heroic;	break;
			case "head_01_theme_02":						_buff_found = head_01_theme_02;	break;
			case "head_01_theme_03":						_buff_found = head_01_theme_03;	break;
			case "jaw_01_theme_02":							_buff_found = jaw_01_theme_02;		break;
			
			case "shoulder_R_01_theme_02":					_buff_found = shoulder_R_01_theme_02;	break;
			case "Uarm_R_01_theme_02":						_buff_found = Uarm_R_01_theme_02;	break;
			case "Uarm_R_01_theme_03":						_buff_found = Uarm_R_01_theme_03;	break;
			case "Uarm_L_01_theme_03":						_buff_found = Uarm_L_01_theme_03;	break;
			case "Uarm_R_01_theme_04":						_buff_found = Uarm_R_01_theme_04;	break;
			case "Uarm_L_01_theme_04":						_buff_found = Uarm_L_01_theme_04;	break;
			
			case "shoulder_R_01_theme_03":					_buff_found = shoulder_R_01_theme_03;	break;
			case "shoulder_L_01_theme_03":					_buff_found = shoulder_L_01_theme_03;	break;
			case "Lleg_R_01_theme_03":						_buff_found = Lleg_R_01_theme_03;	break;
			case "Lleg_L_01_theme_03":						_buff_found = Lleg_R_01_theme_03;	break;
			
			//case "Farm_R_01_theme_02":						_buff_found = Farm_R_01_theme_02;	break;
			//case "hand_R_01_theme_02":						_buff_found = hand_R_01_theme_02;	break;
			
			case "shoulder_L_01_theme_02":					_buff_found = shoulder_L_01_theme_02;	break;
			case "Uarm_L_01_theme_02":						_buff_found = Uarm_L_01_theme_02;	break;
			//case "Farm_L_01_theme_02":						_buff_found = Farm_L_01_theme_02;	break;
			//case "hand_L_01_theme_02":						_buff_found = hand_L_01_theme_02;	break;
			
			//case "hip_R_01_theme_02":						_buff_found = hip_R_01_theme_02;	break;
			//case "Uleg_R_01_theme_02":						_buff_found = Uleg_R_01_theme_02;	break;
			case "Lleg_R_01_theme_02":						_buff_found = Lleg_R_01_theme_02;	break;
			//case "foot_R_01_theme_02":						_buff_found = foot_R_01_theme_02;	break;
			//case "toe_R_01_theme_02":						_buff_found = toe_R_01_theme_02;	break;
			
			//case "hip_L_01_theme_02":						_buff_found = hip_L_01_theme_02;	break;
			//case "Uleg_L_01_theme_02":						_buff_found = Uleg_L_01_theme_02;	break;
			case "Lleg_L_01_theme_02":						_buff_found = Lleg_L_01_theme_02;	break;
			//case "foot_L_01_theme_02":						_buff_found = foot_L_01_theme_02;	break;
			//case "toe_L_01_theme_02":						_buff_found = toe_L_01_theme_02;	break;
			
			//helmets
			case "helmet_01_basic":						_buff_found = helmet_01_basic;	break;
			case "visor_01_basic":						_buff_found = visor_01_basic;	break;
			case "hat_01":								_buff_found = hat_01;	break;
			case "hat_01_colider":						_buff_found = hat_01_colider;	break;
			case "hat_02":								_buff_found = hat_02;	break;
			case "hat_02_colider":						_buff_found = hat_02_colider;	break;
			
			case "helmet_01":							_buff_found = helmet_01;	break;
			case "helmet_02":							_buff_found = helmet_02;	break;
			case "helmet_03":							_buff_found = helmet_03;	break;
			case "helmet_04":							_buff_found = helmet_04;	break;
			case "helmet_05":							_buff_found = helmet_05;	break;
			
			//backpacks
			case "backpack1":							_buff_found = backpack1;	break;
			case "backpack1_colider":					_buff_found = backpack1_colider;	break;
			case "backpack2":							_buff_found = backpack2;	break;
			case "backpack2_colider":					_buff_found = backpack2_colider;	break;
			case "backpack3":							_buff_found = backpack3;	break;
			case "backpack3_colider":					_buff_found = backpack3_colider;	break;
			
			case "line1":								_buff_found = line1;	break;
			case "line1_colider":						_buff_found = line1_colider;	break;
			
			//standard weapons
			case "sword1":								_buff_found = sword1;	break;
			case "sword1_colider":						_buff_found = sword1_colider;	break;//round
			case "sword2":								_buff_found = sword2;	break;//short sword
			case "sword2_colider":						_buff_found = sword2_colider;	break;//round
			case "dagger1":								_buff_found = dagger1;	break;
			case "dagger1_colider":						_buff_found = dagger1_colider;	break;//round
			case "axe1":								_buff_found = axe1;	break;
			case "axe1_colider":						_buff_found = axe1_colider;	break;//round
			case "pickaxe1":							_buff_found = pickaxe1;	break;
			case "pickaxe1_colider":					_buff_found = pickaxe1_colider;	break;//round
			case "knife1":								_buff_found = knife1;	break;
			case "knife1_colider":						_buff_found = knife1_colider;	break;//round
			case "walking_stick":						_buff_found = walking_stick;	break;
			case "spade1":								_buff_found = spade1;	break;
			case "spade1_colider":						_buff_found = spade1_colider;	break;//round
			case "choppa_01":							_buff_found = choppa_01;	break;
			case "choppa_01_colider":					_buff_found = choppa_01_colider;	break;//round
			
			//scabbards
			case "scabbard1":							_buff_found = scabbard1;	break;
			case "scabbard1_colider":					_buff_found = scabbard1_colider;	break;//round
			case "scabbard2":							_buff_found = scabbard2;	break;//for shortsword
			case "scabbard2_colider":					_buff_found = scabbard2_colider;	break;//round
			case "scabbard3":							_buff_found = scabbard3;	break;//for dagger
			case "scabbard3_colider":					_buff_found = scabbard3_colider;	break;//round
			
			//shields
			case "shield1":								_buff_found = shield1;	break;//round
			case "shield1_colider":						_buff_found = shield1_colider;	break;//round
			case "shield2":								_buff_found = shield2;	break;//knight
			case "shield2_colider":						_buff_found = shield2_colider;	break;//round
			
		}
	return(_buff_found);
}