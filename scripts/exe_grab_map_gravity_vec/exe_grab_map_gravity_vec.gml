function exe_grab_map_gravity_vec(_obj)
{
	//expected in falling
	if struct_get(_obj.character_sheet, "body_measures") != undefined
		{
			if struct_get(_obj.character_sheet.body_measures,	"gravity_operation") != undefined
				{
					if _obj.character_sheet.body_measures.gravity_operation[0] > 0
						{
							var _grab = 0;
							if _obj.character_sheet.body_measures.gravity_operation[4] == 1	{_grab = 1;};//normal
							if _obj.character_sheet.body_measures.gravity_operation[4] == 2	{_grab = 1;};//spider
							
							var _coyotee_time = 30;//from exe_calc_gravity_diff_to_main
							if _obj.character_sheet.body_measures.gravity_diff[4] + _coyotee_time > game_time	{_grab = 0;}
							
							if _grab > 0
								{
									//magic number later on from gravity adjustemnt speed TBD
									//it must be dependet on max jump strenght
									var _adjustment_speed = 0.17;
									if dot_product_3d(	_obj.control_method.gravity[0],_obj.control_method.gravity[1],_obj.control_method.gravity[2],
														map3d.general_gravity[0],map3d.general_gravity[1],map3d.general_gravity[2]
														) > 0.9998	//1deg
										{
											_obj.control_method.gravity = variable_clone(map3d.general_gravity);
										}
									else
										{
											_obj.control_method.gravity = [	lerp(_obj.control_method.gravity[0],map3d.general_gravity[0],_adjustment_speed),
																			lerp(_obj.control_method.gravity[1],map3d.general_gravity[1],_adjustment_speed),
																			lerp(_obj.control_method.gravity[2],map3d.general_gravity[2],_adjustment_speed)
																			];
										}
								}
						}
				}
		}
	return(_obj);
}