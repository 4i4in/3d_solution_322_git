function exe_next_pose_anim_random_in_cycle(_obj,_exclude)
{
	var _cycle_pack = reference_struct[$	_obj.character_sheet.anim_cycles][$ _obj.control_method.behaviour_cycle];
	var _anim_choice = -1;
	
	if _exclude != "any"
		{
			var _current_pose = _obj.control_method.anim_stack[0];
			var _current_pose_id = -1;
			for(var _scp = 0; _scp < array_length(_cycle_pack); _scp++)
				{
						if _cycle_pack[_scp][0] == _current_pose	{_current_pose_id = _scp; break;};
				}
		}
	
	switch(_exclude)
		{
			case "any":
				_anim_choice = irandom(array_length(_cycle_pack)-1);
				break
			case "another":
				while(_anim_choice < 0 || _anim_choice == _current_pose_id)
					{
						_anim_choice = irandom(array_length(_cycle_pack)-1);
					}
				break;
		}
	//_cycle_pack[_anim_choice] exception handling
	var _undef_exception = 0;
	if _cycle_pack[_anim_choice] == undefined	{_undef_exception = 1;}
	else
		{
			if _cycle_pack[_anim_choice][0] == undefined	{_undef_exception = 1;}
			if _cycle_pack[_anim_choice][1] == undefined	{_undef_exception = 1;}
			if _cycle_pack[_anim_choice][2] == undefined	{_undef_exception = 1;}
		}
	if _undef_exception > 0
		{
			_cycle_pack[_anim_choice] = [ "basic_pose",2,[ 0,1,1 ],[] ];
show_debug_message("_undef_exception in exe_next_pose_anim_random_in_cycle!!!!!!!!!!!!");
		}	
	//=========================================
	
	var _carry = [-1,-1,_cycle_pack[_anim_choice][0],_cycle_pack[_anim_choice][1],_cycle_pack[_anim_choice][2]];

	_obj = exe_push_anim_stack_on_obj(_carry,_obj);

	if array_length(_cycle_pack[_anim_choice]) > 3
		{
			_obj = exe_push_anim_info_to_detector_stack(_cycle_pack[_anim_choice],_obj);
		}

	return(_obj);
}