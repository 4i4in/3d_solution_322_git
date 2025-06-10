function exe_grab_colision_gravity_vec(_obj,_normal,_ground_or_climb)
{
	if struct_get(_obj.character_sheet, "body_measures") != undefined
		{
			if struct_get(_obj.character_sheet.body_measures,	"gravity_operation") != undefined
				{
					if _obj.character_sheet.body_measures.gravity_operation[0] > 0
						{
							if _obj.character_sheet.body_measures.gravity_operation[4] == 1
								{
									var _reset_cilmb_diff = 0;
									if _ground_or_climb != undefined	//passed from function
										{
											if _ground_or_climb == "climb"	&& _obj.character_sheet.body_measures.perform_climbing > 0
												{
													if exe_check_object_in_climbing(_obj) > 0
														{
															var _obj_g_vec = vec_normalize([_obj.control_method.gravity[0],_obj.control_method.gravity[1],_obj.control_method.gravity[2]]);
															var _coll_dot = dot_product_3d(_normal[0],_normal[1],_normal[2],_obj_g_vec[0],_obj_g_vec[1],_obj_g_vec[2]);
									
															if _coll_dot > _obj.character_sheet.body_measures.scrambling_dot	&&	_coll_dot < _obj.character_sheet.body_measures.climbing_dot
																{
																	_obj.character_sheet.body_measures.gravity_diff[3] = _coll_dot;
																}
														}
												}
											else	{_reset_cilmb_diff = 1;}
										}
									else	{_reset_cilmb_diff = 1;}
									if _reset_cilmb_diff > 0	{	_obj.character_sheet.body_measures.gravity_diff[3] = 0;	};
								}
								
							if _obj.character_sheet.body_measures.gravity_operation[4] == 2
								{
									// 1g map vector length is multipler for spider gravity
									var _map_g_l = -point_distance_3d(0,0,0,map3d.general_gravity[0],map3d.general_gravity[1],map3d.general_gravity[2]);
									_obj.control_method.gravity[0] = _normal[0] * _map_g_l;
									_obj.control_method.gravity[1] = _normal[1] * _map_g_l;
									_obj.control_method.gravity[2] = _normal[2] * _map_g_l;
								}
						}
				}
		}
	return(_obj);
}