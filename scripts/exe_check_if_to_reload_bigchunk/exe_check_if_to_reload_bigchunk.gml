function exe_check_if_to_reload_bigchunk(_obj)
{
	var _continue = 0;
	switch(_obj.control_method.active[1])
		{
			case "humanoid_sceleton":	_continue = 1;break;
		}	
	if _continue < 1	{exit;}
	if struct_get(_obj.character_sheet, "bigchunk_pos")	!= undefined
		{
			var _bchpart = map3d.world_map_bigchunks.single_bigchunk_shift/2;
			var _switch_bigchunk = 0;
			
			if _obj.part_vsubmit[0][0] < map3d.world_map_bigchunks.bigchunk_x_start + _bchpart	{_switch_bigchunk=1;};
			if _obj.part_vsubmit[0][0] > map3d.world_map_bigchunks.bigchunk_x_start + map3d.world_map_bigchunks.single_bigchunk_size - _bchpart	{_switch_bigchunk=1;};	
			
			if _obj.part_vsubmit[0][1] < map3d.world_map_bigchunks.bigchunk_y_start + _bchpart	{_switch_bigchunk=1;};
			if _obj.part_vsubmit[0][1] > map3d.world_map_bigchunks.bigchunk_y_start + map3d.world_map_bigchunks.single_bigchunk_size - _bchpart	{_switch_bigchunk=1;};	
			
			if _obj.part_vsubmit[0][2] < map3d.world_map_bigchunks.bigchunk_z_start + _bchpart	{_switch_bigchunk=1;};
			if _obj.part_vsubmit[0][2] > map3d.world_map_bigchunks.bigchunk_z_start + map3d.world_map_bigchunks.single_bigchunk_size - _bchpart	{_switch_bigchunk=1;};	
			
			if _switch_bigchunk > 0
				{
					var _switch_to = variable_clone(_obj.character_sheet.bigchunk_pos);
					if _switch_to[0] < 1	{_switch_to[0] = 1;};
					if _switch_to[1] < 1	{_switch_to[1] = 1;};
					if _switch_to[2] < 1	{_switch_to[2] = 1;};
					
					var _different_then_current = 0;
					var _current_bchpos = map3d.world_map_bigchunks.current_bigchunk_load;
					
					if _switch_to[0] != _current_bchpos[0]	{_different_then_current = 1;};
					if _switch_to[1] != _current_bchpos[1]	{_different_then_current = 1;};
					if _switch_to[2] != _current_bchpos[2]	{_different_then_current = 1;};
					
					var _dis = point_distance_3d(	_current_bchpos[0],_current_bchpos[1],_current_bchpos[2],
													_switch_to[0],_switch_to[1],_switch_to[2]);
					if _dis < 1.5	{_different_then_current = 0;};//nullation
					if _different_then_current > 0
						{
							exe_reload_all_coliders_for_given_bigchunk(_switch_to);
						}
				}
		}
}