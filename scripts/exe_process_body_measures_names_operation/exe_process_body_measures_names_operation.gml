function exe_process_body_measures_names_operation(_carry,_obj)
{
	var _s_name = _carry[2];
	var _arr_num = _carry[3];
	var _operation = _carry[4];
	var _value_change = _carry[5];
	
	var _minmax = -1;
	var _val_min = 0;
	var _val_max = 0;
	
	var _carry_info = "error; no info;";

	//_s_name from exe_calculate_character_body_measures
	switch(_s_name)
		{
			//values refer to : function exe_calculate_character_body_measures(_obj)
			
			//those are calculated:
			case "backpack_01":	case "stride_width":	case "stride_length_R":	case "stride_length_L":	//make those setable
			
			case "leg_L":	case "leg_R":
			case "main_part":	case "ass_pivot_01":	case "spine_01":	case "spine_02":
			case "neck_01":	case "head_01":	case "jaw_01":	case "helmet_01":	case "visor_01":
			case "shoulder_R_01":	case "Uarm_R_01":	case "Farm_R_01":		case "hand_R_01":
			case "shoulder_L_01":	case "Uarm_L_01":	case "Farm_L_01":		case "hand_L_01":
			case "hip_R_01":	case "Uleg_R_01":	case "Lleg_R_01":	case "foot_R_01":	case "toe_R_01":
			case "hip_L_01":	case "Uleg_L_01":	case "Lleg_L_01":	case "foot_L_01":	case "toe_L_01":
			_carry_info = "cant_change;\n calculated from skeleton;\n edit sceleton body part size to change it;";
			if _operation != "set"	{_operation = "noone";};
				break;
				
			//hard coded
			case "max_idle_states":
			_operation = "noone";
			_carry_info = "cant_change;\n number of avilable iddle animations;";
				break;
			case "gravity_diff":
			_operation = "noone";
			_carry_info = "cant_change;\n placeholder for result of function;\n main part off from gravity vec;\n tilt | pitch | upvec | climb_pitch | time stamp for activator;";
				break;
			case "gravity_operation":
				switch(_arr_num)
					{
						case -1:	_carry_info = "gravity_operation;\n right up on/off | tilt speed | pitch speed | \n reverse minus up vec mul | \n gather gravity mode: \n 0 - map gravity;\n 1 - local;\n 2 - anchor/spider;";	
							_operation = "set"; _value_change = [0,1,1,1,1];	break;
						case 0:		_carry_info = "switch;\n on|off;";	_operation = "switch";	break;
						case 1:		_carry_info = "addfast;\n tilt speed;";	_minmax = 1;	_val_min = 0;	_val_max = 15;	break;
						case 2:		_carry_info = "addfast;\n pitch speed;";	_minmax = 1;	_val_min = 0;	_val_max = 15;	break;
						case 3:		_carry_info = "addfast;\n reverse negativ up vec mul;";	_minmax = 1;	_val_min = 1;	_val_max = 15;	break;
						case 4:		_carry_info = "addfast;\n gather gravity mode: \n 0 - map gravity;\n 1 - local;\n 2 - anchor/spider;";	_minmax = 1;	_val_min = 0;	_val_max = 2;	break;
					}
				break;
			
			
			//detectors
			case "det_col_ass_back":	
				_carry_info = "addfast;\n back detector for colision;";
				if _operation == "set"	{_value_change = -(_obj.character_sheet.body_measures.spine_01 + _obj.character_sheet.body_measures.spine_02);}
				else	{_value_change *= 0.1};
				break;
			
			case "det_col_ass_fwd":	
				_carry_info = "addfast;\n forward detector for colision;";
				if _operation == "set"	{_value_change = _obj.character_sheet.body_measures.spine_01 + _obj.character_sheet.body_measures.spine_02;}
				else	{_value_change *= 0.1};
				break;
			
			case "det_col_shoulderR_right":	
				_carry_info = "addfast;\n right detector for colision;";
				if _operation == "set"	{_value_change = (_obj.character_sheet.body_measures.Uarm_R_01 + _obj.character_sheet.body_measures.Farm_R_01)/2;}
				else	{_value_change *= 0.1};
				break;
			
			case "det_col_shoulderL_left":	
				_carry_info = "addfast;\n right detector for colision;";
				if _operation == "set"	{_value_change = (_obj.character_sheet.body_measures.Uarm_L_01 + _obj.character_sheet.body_measures.Farm_L_01)/2;}
				else	{_value_change *= 0.1};
				break;
			
			case "det_past_main_part":
				switch(_arr_num)
					{
						case -1:	_carry_info = "det_past_main_part is\n last step safe position to check\n for colisions between past\n and current main part position; \n can be set to current;";	
						_operation = "set"; 
						_value_change = [_obj.part_posMat[0][12],_obj.part_posMat[0][13],_obj.part_posMat[0][14]];	
							break;
						case 0:		_carry_info = "cant_change;\n last main part xpos;";	_operation = "noone";	break;
						case 1:		_carry_info = "cant_change;\n last main part ypos;";	_operation = "noone";	break;
						case 2:		_carry_info = "cant_change;\n last main part zpos;";	_operation = "noone";	break;
					}
				break;
				
			//keep_camera_back
			case "keep_camera_back":
				switch(_arr_num)
					{
						case -1:	_carry_info = "back camera position;";	if _operation == "set"	{_value_change = [0,0,0,-50,50,0,0,-30,0];};	break;
						case 0:		_carry_info = "addfast;\n tilt;\n back camera position;";	break;
						case 1:		_carry_info = "addfast;\n pitch;\n back camera position;";	break;
						case 2:		_carry_info = "addfast;\n yaw;\n back camera position;";	break;
						case 3:		_carry_info = "addfast;\n fwd;\n back camera position;";	break;
						case 4:		_carry_info = "addfast;\n up;\n back camera position;";	break;
						case 5:		_carry_info = "addfast;\n left;\n back camera position;";	break;
						case 6:		_carry_info = "addfast;\n tilt2; after move;\n back camera position;";	break;
						case 7:		_carry_info = "addfast;\n pitch2; after move;\n back camera position;";	break;
						case 8:		_carry_info = "addfast;\n yaw2; after move;\n back camera position;";	break;
					}
				break;
			case "mod_camera_back":
				_carry_info = "cant_change;\n placeholder for function results";
				_operation = "noone";
				break;
			case "cam_rot_speed":
				_carry_info = "addfast;\n cam_rot_speed;";
				_minmax = 1;	_val_min = 0;	_val_max = 99;
				if _operation == "set"	{_value_change = 15;};
				break;
			case "cam_pitch_speed":
				_carry_info = "addfast;\n cam_pitch_speed;";
				_minmax = 1;	_val_min = 0;	_val_max = 99;
				if _operation == "set"	{_value_change = 30;};
				break;
			case "cam_pitch_mul":
				_carry_info = "addfast;\n cam_pitch_mul;";
				_minmax = 1;	_val_min = 0.1;	_val_max = 1.;
				if _operation == "set"	{_value_change = 0.5;} else	{_value_change *= 0.1;}
				break;
			case "cam_minus_pitch":
			switch(_arr_num)
					{
						case -1:	_carry_info = "cam_minus_pitch;\n current | max | reset value | speed change \n value determine how fast cam pitch;";	if _operation == "set"	{_value_change = [0,60,1,0.3];};	break;
						case 0:		_carry_info = "addfast;\n cam_minus_pitch;\n current;";	_minmax = 1;	_val_min = 0;	_val_max = _obj.character_sheet.body_measures[$ _s_name][1];	break;
						case 1:		_carry_info = "addfast;\n cam_minus_pitch;\n max value;";	_minmax = 1;	_val_min = 0;	_val_max = 99;	break;
						case 2:		_carry_info = "addfast;\n cam_minus_pitch;\n reset value if pitch stops;";	_minmax = 1;	_val_min = 0;	_val_max = 99;	break;
						case 3:		_carry_info = "addfast;\n cam_minus_pitch;\n speed change determine \n how fast pitch speed increase until max;";	_minmax = 1;	_val_min = 0.1;	_val_max = 5;	if _operation == "set"	{_value_change = 0.3;} else	{_value_change *= 0.1;}break;
					}
				break;
			case "cam_minus_yaw":
			switch(_arr_num)
					{
						case -1:	_carry_info = "cam_minus_yaw;\n current | max | reset value | speed change \n value determine how fast cam pitch;";	if _operation == "set"	{_value_change = [0,60,1,0.3];};	break;
						case 0:		_carry_info = "addfast;\n cam_minus_yaw;\n current;";	_minmax = 1;	_val_min = 0;	_val_max = _obj.character_sheet.body_measures[$ _s_name][1];	break;
						case 1:		_carry_info = "addfast;\n cam_minus_yaw;\n max value;";	_minmax = 1;	_val_min = 0;	_val_max = 99;	break;
						case 2:		_carry_info = "addfast;\n cam_minus_yaw;\n reset value if pitch stops;";	_minmax = 1;	_val_min = 0;	_val_max = 99;	break;
						case 3:		_carry_info = "addfast;\n cam_minus_yaw;\n speed change determine \n how fast pitch speed increase until max;";	_minmax = 1;	_val_min = 0.1;	_val_max = 5;	if _operation == "set"	{_value_change = 0.3;} else	{_value_change *= 0.1;}break;
					}
				break;
			case "scrambling_cam_pitch":
				_carry_info = "addfast;\n scrambling_cam_pitch;\n cam pitch in scrambling to get better view on hill;";
				_minmax = 1;	_val_min = -90;	_val_max = 90;
				if _operation == "set"	{_value_change = -30;};
				break;
			case "climb_cam_pose_angle":
			switch(_arr_num)
					{
						case -1:	_carry_info = "climb_cam_pose_angle;\n rot | pitch; in deg;\n camera angle mod in climbing;";	if _operation == "set"	{_value_change = [30,15];};	break;
						case 0:		_carry_info = "addfast;\n climb_cam_pose_angle;\n rot;";	_minmax = 1;	_val_min = -90;	_val_max = 90;	break;
						case 1:		_carry_info = "addfast;\n climb_cam_pose_angle;\n pitch;";	_minmax = 1;	_val_min = -90;	_val_max = 90;	break;
					}
				break;
			case "hang_cam_pose_angle":
			switch(_arr_num)
					{
						case -1:	_carry_info = "hang_cam_pose_angle;\n jump down extra angle | camera down boost in hanging | left/right pose cam extra diff; in deg;";	if _operation == "set"	{_value_change = [60,-25,30];};	break;
						case 0:		_carry_info = "addfast;\n hang_cam_pose_angle;\n jump down extra angle;";		_minmax = 1;	_val_min = -90;	_val_max = 90;	break;
						case 1:		_carry_info = "addfast;\n hang_cam_pose_angle;\n camera down boost in hanging;";	_minmax = 1;	_val_min = -90;	_val_max = 90;	break;
						case 2:		_carry_info = "addfast;\n hang_cam_pose_angle;\n left/right pose cam extra diff;";	_minmax = 1;	_val_min = -90;	_val_max = 90;	break;
					}
				break;
				
			//movement
			case "idle_rot_speed":
			switch(_arr_num)
					{
						case -1:	_carry_info = "idle_rot_speed;\n current | max | reset value | speed change \n value determine how fast character can turn in iddle;";	if _operation == "set"	{_value_change = [1,3,1,1];};	break;
						case 0:		_carry_info = "addfast;\n idle_rot_speed;\n current;";	_minmax = 1;	_val_min = 0;	_val_max = _obj.character_sheet.body_measures[$ _s_name][1];	break;
						case 1:		_carry_info = "addfast;\n idle_rot_speed;\n max value;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 2:		_carry_info = "addfast;\n idle_rot_speed;\n reset value if turning stops;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 3:		_carry_info = "addfast;\n idle_rot_speed;\n speed change determine \n how fast turning speed increase until max;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
					}
				break;
				
			case "walk_rot_speed":
			switch(_arr_num)
					{
						case -1:	_carry_info = "walk_rot_speed;\n current | max | reset value | speed change \n value determine how fast character can turn in walk;";	if _operation == "set"	{_value_change = [1,2,1,1];};	break;
						case 0:		_carry_info = "addfast;\n walk_rot_speed;\n current;";	_minmax = 1;	_val_min = 0;	_val_max = _obj.character_sheet.body_measures[$ _s_name][1];	break;
						case 1:		_carry_info = "addfast;\n walk_rot_speed;\n max value;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 2:		_carry_info = "addfast;\n walk_rot_speed;\n reset value if turning stops;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 3:		_carry_info = "addfast;\n walk_rot_speed;\n speed change determine \n how fast turning speed increase until max;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
					}
				break;
				
			case "jog_rot_speed":
			switch(_arr_num)
					{
						case -1:	_carry_info = "jog_rot_speed;\n current | max | reset value | speed change \n value determine how fast character can turn in jog;";	if _operation == "set"	{_value_change = [1,2,1,1];};	break;
						case 0:		_carry_info = "addfast;\n jog_rot_speed;\n current;";	_minmax = 1;	_val_min = 0;	_val_max = _obj.character_sheet.body_measures[$ _s_name][1];	break;
						case 1:		_carry_info = "addfast;\n jog_rot_speed;\n max value;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 2:		_carry_info = "addfast;\n jog_rot_speed;\n reset value if turning stops;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 3:		_carry_info = "addfast;\n jog_rot_speed;\n speed change determine \n how fast turning speed increase until max;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
					}
				break;
				
			case "climb_rot_speed":
			switch(_arr_num)
					{
						case -1:	_carry_info = "climb_rot_speed;\n current | max | reset value | speed change \n value determine how fast character can turn in climb;";	if _operation == "set"	{_value_change = [1,2,1,1];};	break;
						case 0:		_carry_info = "addfast;\n climb_rot_speed;\n current;";	_minmax = 1;	_val_min = 0;	_val_max = _obj.character_sheet.body_measures[$ _s_name][1];	break;
						case 1:		_carry_info = "addfast;\n climb_rot_speed;\n max value;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 2:		_carry_info = "addfast;\n climb_rot_speed;\n reset value if turning stops;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 3:		_carry_info = "addfast;\n climb_rot_speed;\n speed change determine \n how fast turning speed increase until max;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
					}
				break;
				
			case "hang_rot_speed":
			switch(_arr_num)
					{
						case -1:	_carry_info = "hang_rot_speed;\n current | max | reset value | speed change \n value determine how fast character can turn in hanging-climb;";	if _operation == "set"	{_value_change = [1,2,1,1];};	break;
						case 0:		_carry_info = "addfast;\n hang_rot_speed;\n current;";	_minmax = 1;	_val_min = 0;	_val_max = _obj.character_sheet.body_measures[$ _s_name][1];	break;
						case 1:		_carry_info = "addfast;\n hang_rot_speed;\n max value;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 2:		_carry_info = "addfast;\n hang_rot_speed;\n reset value if turning stops;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 3:		_carry_info = "addfast;\n hang_rot_speed;\n speed change determine \n how fast turning speed increase until max;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
					}
				break;
			
			case "walk_speed_up":
			switch(_arr_num)
					{
						case -1:	_carry_info = "walk_speed_up;\n current | max | reset value | speed change \n value determine how fast character change speed;";	if _operation == "set"	{_value_change = [0,50,0,30];};	break;
						case 0:		_carry_info = "addfast;\n walk_speed_up;\n current;";	_minmax = 1;	_val_min = 0;	_val_max = _obj.character_sheet.body_measures[$ _s_name][1];	break;
						case 1:		_carry_info = "addfast;\n walk_speed_up;\n max value;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 2:		_carry_info = "addfast;\n walk_speed_up;\n reset value if turning stops;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 3:		_carry_info = "addfast;\n walk_speed_up;\n speed change determine \n how fast speed increase until max;";	_minmax = 1;	_val_min = 1;	_val_max = 99;	break;
					}
				break;
			
			case "jog_speed_up":
			switch(_arr_num)
					{
						case -1:	_carry_info = "jog_speed_up;\n current | max | reset value | speed change \n value determine how fast character change speed;";	if _operation == "set"	{_value_change = [0,50,25,30];};	break;
						case 0:		_carry_info = "addfast;\n jog_speed_up;\n current;";	_minmax = 1;	_val_min = 0;	_val_max = _obj.character_sheet.body_measures[$ _s_name][1];	break;
						case 1:		_carry_info = "addfast;\n jog_speed_up;\n max value;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 2:		_carry_info = "addfast;\n jog_speed_up;\n reset value if turning stops;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 3:		_carry_info = "addfast;\n jog_speed_up;\n speed change determine \n how fast speed increase until max;";	_minmax = 1;	_val_min = 1;	_val_max = 99;	break;
					}
				break;
				
			case "jump_arr":
			switch(_arr_num)
					{
						case -1:	_carry_info = "jump_arr;\n current | realese level/time | reset value aft4er realese | speed change \n jump relase, jump strength proportion under realese;";	if _operation == "set"	{_value_change = [0,10,0,1];};	break;
						case 0:		_carry_info = "addfast;\n jump_arr;\n current;";	_minmax = 1;	_val_min = 0;	_val_max = _obj.character_sheet.body_measures[$ _s_name][1];	break;
						case 1:		_carry_info = "addfast;\n jump_arr;\n realese level;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 2:		_carry_info = "addfast;\n jump_arr;\n reset value after realese;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 3:		_carry_info = "addfast;\n jump_arr;\n speed change for holding key;";	_minmax = 1;	_val_min = 1;	_val_max = 99;	break;
					}
				break;
				
			case "jump_strength":
			switch(_arr_num)
					{
						case -1:	_carry_info = "jump_strength from standing position;\n up | forward | side \n jump strength proportional to release value;";	if _operation == "set"	{_value_change = [10,7,5];};	break;
						case 0:		_carry_info = "addfast;\n jump_strength from standing position;\n up;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 1:		_carry_info = "addfast;\n jump_strength from standing position;\n forward;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 2:		_carry_info = "addfast;\n jump_strength from standing position;\n side;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
					}
				break;
				
			case "jog_jump_strength_flat":
			switch(_arr_num)
					{
						case -1:	_carry_info = "jog_jump_strength_flat from flat run;\n up | forward | side \n jump strength proportional to release value;";	if _operation == "set"	{_value_change = [9,4,3];};	break;
						case 0:		_carry_info = "addfast;\n jog_jump_strength_flat from flat run;\n up;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 1:		_carry_info = "addfast;\n jog_jump_strength_flat from flat run;\n forward;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 2:		_carry_info = "addfast;\n jog_jump_strength_flat from flat run;\n side;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
					}
				break;
				
			case "jog_jump_strength_stepup":
			switch(_arr_num)
					{
						case -1:	_carry_info = "jog_jump_strength_stepup from uphill run;\n up | forward | side \n jump strength proportional to release value;";	if _operation == "set"	{_value_change = [11,3,2];};	break;
						case 0:		_carry_info = "addfast;\n jog_jump_strength_stepup from uphill run;\n up;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 1:		_carry_info = "addfast;\n jog_jump_strength_stepup from uphill run;\n forward;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 2:		_carry_info = "addfast;\n jog_jump_strength_stepup from uphill run;\n side;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
					}
				break;
				
			case "jog_jump_strength_stepdown":
			switch(_arr_num)
					{
						case -1:	_carry_info = "jog_jump_strength_stepdown from downhill run;\n up | forward | side \n jump strength proportional to release value;";	if _operation == "set"	{_value_change = [8,5,4];};	break;
						case 0:		_carry_info = "addfast;\n jog_jump_strength_stepdown from downhill run;\n up;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 1:		_carry_info = "addfast;\n jog_jump_strength_stepdown from downhill run;\n forward;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 2:		_carry_info = "addfast;\n jog_jump_strength_stepdown from downhill run;\n side;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
					}
				break;
				
			case "climb_jump_strength":
			switch(_arr_num)
					{
						case -1:	_carry_info = "climb_jump_strength;\n up | forward | side \n jump strength proportional to release value;";	if _operation == "set"	{_value_change = [10,10,10];};	break;
						case 0:		_carry_info = "addfast;\n climb_jump_strength;\n up;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 1:		_carry_info = "addfast;\n climb_jump_strength;\n forward;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 2:		_carry_info = "addfast;\n climb_jump_strength;\n side;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
					}
				break;
				
			case "hang_jump_strength":
			switch(_arr_num)
					{
						case -1:	_carry_info = "hang_jump_strength;\n up | forward | side \n jump strength proportional to release value;";	if _operation == "set"	{_value_change = [0,15,15];};	break;
						case 0:		_carry_info = "addfast;\n hang_jump_strength;\n up;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 1:		_carry_info = "addfast;\n hang_jump_strength;\n forward;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
						case 2:		_carry_info = "addfast;\n hang_jump_strength;\n side;";	_minmax = 1;	_val_min = 0;	_val_max = 999;	break;
					}
				break;
				
			//climbing on off switch
			case "perform_climbing":
			if _operation != "set"	{_operation = "switch";} else	{_value_change = 1;};
			_carry_info = "perform_climbing; on | off switch";
				break;
			
			
			//minus dot
			case "walk_dot":
			if _operation != "set"	{_operation = "minus_dcos";}
			else					{_operation = "set_dcos";	_value_change = 30;};
			_carry_info = "addfast;\n walk_dot; max dot product to surface to perform walk";
				break;
				
			case "scrambling_dot":
			if _operation != "set"	{_operation = "minus_dcos";}
			else					{_operation = "set_dcos";	_value_change = 60;};
			_carry_info = "addfast;\n scrambling_dot; max dot product to surface to perform scrambling";
				break;
				
			case "climbing_dot":
			if _operation != "set"	{_operation = "minus_dcos";}
			else					{_operation = "set_dcos";	_value_change = 120;};
			_carry_info = "addfast;\n climbing_dot; max dot product to surface to perform scrambling";
				break;
				
			case "dot_mainXY_to_anchor":
			switch(_arr_num)
					{
						case -1:	_carry_info = "dot_mainXY_to_anchor;\n dot diff to front surface in climb to stop rotate | dot diff forcing 179deg rot to surface | rotation speed in deg;";	if _operation == "set"	{_value_change = [0.1,0.5,3];};	break;
						case 0:		_carry_info = "addfast;\n dot_mainXY_to_anchor;\n dot diff to front surface in climb to stop rotate;";	_minmax = 1;	_val_min = 0.1;	_val_max = 1.;	_value_change *= 0.1;	break;
						case 1:		_carry_info = "addfast;\n dot_mainXY_to_anchor;\n dot diff forcing 179deg rot to surface;";				_minmax = 1;	_val_min = 0.1;	_val_max = 1.;	_value_change *= 0.1;	break;
						case 2:		_carry_info = "addfast;\n dot_mainXY_to_anchor;\n rotation speed in deg;";								_minmax = 1;	_val_min = 1;	_val_max = 30;	break;
					}
				break;
				
			case "hang_controls_pause":
			switch(_arr_num)
					{
						case -1:	_carry_info = "hang_controls_pause;\n pause controls for hanging to not get back to climb\n during change climb<->hang;\n current | set trigger value";	if _operation == "set"	{_value_change = [0,30];};	break;
						case 0:		_carry_info = "addfast;\n hang_controls_pause;\n curent value;";					_minmax = 1;	_val_min = -1;	_val_max = 999;	break;
						case 1:		_carry_info = "addfast;\n hang_controls_pause;\n trigger set value;";				_minmax = 1;	_val_min = 0;	_val_max = 300;	break;
					}
				break;
				
			//activators
			case "activator_resolving_mode":
			_operation = "noone";
			_carry_info = "cant_change;\n for now; activator in \n exe_perform_activator_sequence";
				break;
			case "sleep_time_stamp":
			switch(_arr_num)
					{
						case -1:	_carry_info = "sleep_time_stamp: time_stamp placeholder for function | time mul game speed to next execution";	if _operation == "set"	{_value_change = [0,3];};	break;
						case 0:		_carry_info = "cant_change;\n placeholder fo function;";	_operation = "noone";	break;
						case 1:		_carry_info = "addfast;\n value mul game speed time diff to next execution";				_minmax = 1;	_val_min = 1;	_val_max = 30;	break;
					}
				break;
			case "perform_action":
			_operation = "switch";
			_carry_info = "activator for performing action;\n after waking up object by function; \n exe_perform_activator_sequence";
				break;
			case "force_l":
			if _operation == "set"	{_value_change = 1.;}
			else	{_value_change *= 0.1;}
			_carry_info = "addfast;\n value mul map gforce;";				_minmax = 1;	_val_min = 0.;	_val_max = 6.;
				break;
			case "f_direction":
			_carry_info = "cant_change;\n for now; TBD";
				break;
			
			//atributes
			case "dizziness_gravity":
			if _operation == "set"	{_value_change = 0;}
			else	{_minmax = 1;	_val_min = 0;	_val_max = 999;};
			_carry_info = "addfast;\n gameplay atribute;";
				break;
				
			//biome paints
			case "biome_paint":
			_operation = "noone";
			_carry_info = "cant_change;\n it is just info for function; yes, this is biome_paint for suer :);";
				break;
				
			case "biome_radius":
			if _operation == "set"	{_operation = "noone";}
			else	{_minmax = 1;	_val_min = 50;	_val_max = 300;	_value_change *= 50;};
			_carry_info = "radius is set by selecting propper vbuff, but can be manipulated if there is any point;";
				break;
				
			case "biome_chance_up":
			if _operation == "set"	{_value_change = 30;}
			else	{_minmax = 1;	_val_min = menus.world_control_menu._biome_filter - 1001;	_val_max = menus.world_control_menu._biome_filter;};
			_carry_info = "addfast;\n base chance : " + string(menus.world_control_menu._biome_filter) + "of 1000;\n is negatiion, nothing will appear; \n positive value of this entry mean higher chance for biome item;\n negative lower;\n to control base chance see : menus.world_control_menu._biome_filter;";
				break;
				
			case "granulation":
			if _operation == "set"	{_value_change = menus.world_control_menu._granulation;}
			else	{_minmax = 1;	_val_min = 5;	_val_max = 20;};
			_carry_info = "addfast;\n how far can appear biome point from another;\n reasonable numbers depend on chance;\n bigger biome - higher separation;\n reasonable value is between 10 and 15;\n see : menus.world_control_menu._granulation;";
				break;
				
			case "biome":
			_carry_info =	"biome arr info;";
			if _operation == "set"	&&	_arr_num < 0	
				{
					_carry_info =	"biome_add_entry;\n max 10 entries;";
					_operation =	"biome_add_entry";
				}
			if _operation == "set"	&&	_arr_num > -1	
				{
					_carry_info =	"biome_remove_entry; at least one must exist;";
					_operation =	"biome_remove_entry";
				}
			if _operation == "add"	&&	_arr_num > -1	
				{
					_carry_info =	"biome_change_entry;";
					_operation =	"biome_change_entry";
				}
				break;
		}
	//add technical info		
	_carry_info += "\n arr_num: " + string(_arr_num) +";";
	_carry_info += "\n _operation: " + string(_operation) +";";
	//=======
	
	_carry[2] = _s_name;
	_carry[3] = _arr_num;
	_carry[4] = _operation;
	_carry[5] = _value_change;
	_carry[6] = _carry_info;
	
	if _minmax > 0
		{
			array_push(_carry,_val_min);	array_push(_carry,_val_max);
		}
		
	return(_carry);
}