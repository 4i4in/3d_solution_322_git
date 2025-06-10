function exe_resolve_behaviour_cycle_door1(_obj)
{
	
	switch(_obj.control_method.ground_state)
		{
#region closed	
			case "closed":
				audio_play_sound(_sound_metal_door_slam,0,0);
				_obj.character_sheet.anim_pack = "door1_anim_pack_01";
				_obj.character_sheet.anim_cycles = "door1_anim_cycle_01";
				
				var _str = "open_up_1";
				if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
				_obj.control_method.behaviour_cycle = _str;
				break;
#endregion
#region open	
			case "open":
				audio_play_sound(_sound_metal_door_slam,0,0);
				_obj.character_sheet.anim_pack = "door1_anim_pack_01";
				_obj.character_sheet.anim_cycles = "door1_anim_cycle_01";
				
				var _str = "closed_1";
				if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
				_obj.control_method.behaviour_cycle = _str;
				break;
#endregion
		}
	
	return(_obj);
}