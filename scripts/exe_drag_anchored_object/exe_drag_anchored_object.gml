function exe_drag_anchored_object(_master_obj,_master_part_num,_master_part_posMat,_anchored_arr)
{
	//see exe_return_anchor_dynamic_static for how object is anchored to dynamic object
	//no this object is slave, and the master is object previously anchored to that was slave during anchoring;
	var _still_valid = 1;
	var _return_obj_and_array = exe_return_obj_and_array(_anchored_arr[0]);
	if _return_obj_and_array[0] == 0	&& _return_obj_and_array[1] > -1
		{
			var _snr = _return_obj_and_array[1];
			var _slave_obj = map3d.controlable_objects[_snr];
			var _slave_anch = _slave_obj.control_method.anchor;
			var _all_corect = 0;
			if array_length(_slave_anch) > 0										{_all_corect++;} else{return(-1)};
			if array_length(_slave_anch[0]) > 3										{_all_corect++;} else{return(-1)};
			if _slave_anch[0][2] == _master_obj.character_sheet.hash				{_all_corect++;} else{return(-1)};
			if _slave_anch[0][3] == _master_obj.part_naming[_master_part_num]		{_all_corect++;} else{return(-1)};

			if _all_corect == 4
				{
					if _master_obj.control_method.anim_stack[1] == 0	{return(1)};//skip first frame of obj animation

					var _ny_posMat = variable_clone(_master_part_posMat);
					var _delta = [0,0,0];
					_delta = exe_move_fb(_delta,_master_part_posMat,_anchored_arr[1][2]);
					_delta = exe_move_sides(_delta,_master_part_posMat,-_anchored_arr[1][1]);
					_delta = exe_move_updown(_delta,_master_part_posMat,_anchored_arr[1][0]);				

					_ny_posMat = exe_delta_add_Mat_noortho(_delta,_ny_posMat);
					var _new_anchor_point = [_ny_posMat[12],_ny_posMat[13],_ny_posMat[14]];

					_slave_anch[0][1] = _new_anchor_point;
					_slave_obj.control_method.anchor = _slave_anch;
					map3d.controlable_objects[_snr] = _slave_obj;
				}
			else{return(-1)};
		}
	else	{_still_valid = -1;};
	
	return(_still_valid);
}