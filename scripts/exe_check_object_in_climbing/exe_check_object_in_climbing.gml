function exe_check_object_in_climbing(_obj)
{
	var _obj_in_climbing = 0;
	switch(_obj.control_method.active[1])
		{
			case "humanoid_sceleton":
				switch(_obj.control_method.behaviour_cycle)
					{
						case "start_climbing_LN":	case "start_climbing_RN":
						case "start_climbing_NL":	case "start_climbing_NR":
						
						case "climbing_idle_LN":	case "climbing_idle_RN":
						
						case "climb_up_LN":					case "climb_up_RN":
						case "climb_down_LN":				case "climb_down_RN":
						case "switch_hand_to_LN_from_RN":	case "switch_hand_to_RN_from_LN":
						case "climb_left_RN":				case "climb_right_LN":
						case "climb_leftup_RN":				case "climb_rightup_LN":
						case "climb_leftdown_RN":			case "climb_rightdown_LN":
						
						case "climb_jump_up_start_L":			case "climb_jump_up_start_R":
						case "climb_jump_down_start_L":			case "climb_jump_down_start_R":
						case "climb_jump_back_start_L":			case "climb_jump_back_start_R":
						case "climb_jump_left_start_L":			case "climb_jump_left_start_R":
						case "climb_jump_right_start_L":		case "climb_jump_right_start_R":
			
						case "climb_jump_up_continue_L":		case "climb_jump_up_continue_R":
						case "climb_jump_down_continue_L":		case "climb_jump_down_continue_R":
						case "climb_jump_back_continue_L":		case "climb_jump_back_continue_R":
						case "climb_jump_left_continue_L":		case "climb_jump_left_continue_R":
						case "climb_jump_right_continue_L":		case "climb_jump_right_continue_R":
						_obj_in_climbing = 1;
					}
				break;
		}
	return(_obj_in_climbing);
}