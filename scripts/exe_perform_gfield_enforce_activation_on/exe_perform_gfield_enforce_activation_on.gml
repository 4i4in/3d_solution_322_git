function exe_perform_gfield_enforce_activation_on(_slave_obj,_nn,_master_obj)
{
	var _ny_gvec = [0,0,0];
	
	switch(_slave_obj.character_sheet.body_measures.f_direction)
		{
			case "down":
				_ny_gvec[0] = _slave_obj.part_vsubmit[0][6];
				_ny_gvec[1] = _slave_obj.part_vsubmit[0][7];
				_ny_gvec[2] = _slave_obj.part_vsubmit[0][8];
				break;
		}
	var _map_g_l = point_distance_3d(0,0,0,map3d.general_gravity[0],map3d.general_gravity[1],map3d.general_gravity[2]);
	_map_g_l *= _slave_obj.character_sheet.body_measures.force_l;
	
	_ny_gvec[0] *= _map_g_l;
	_ny_gvec[1] *= _map_g_l;
	_ny_gvec[2] *= _map_g_l;
	
	_master_obj.control_method.gravity[0] = _ny_gvec[0];
	_master_obj.control_method.gravity[1] = _ny_gvec[1];
	_master_obj.control_method.gravity[2] = _ny_gvec[2];
	
	_master_obj.character_sheet.body_measures.gravity_diff[4] = variable_clone(game_time);
	
	return(_master_obj);
}