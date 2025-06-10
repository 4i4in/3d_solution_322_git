function exe_perform_basic_1_activation_on(_slave_obj,_nn,_master_obj)
{
	var _last_activation_arr = _slave_obj.character_sheet.body_measures.sleep_time_stamp;
	
	var _time_stamp = _last_activation_arr[0];
	var _min_t_diff = _last_activation_arr[1] * game_speed;
	
	if game_time > _time_stamp + _min_t_diff
		{
			_slave_obj.character_sheet.body_measures.sleep_time_stamp[0] = variable_clone(game_time);
			_slave_obj.character_sheet.body_measures.perform_action = 1;
			_slave_obj.control_method.active[0] = 1;
		}
	
	map3d.controlable_objects[_nn] = _slave_obj;
	return(_master_obj);
}