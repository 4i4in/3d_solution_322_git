function exe_stright_up_to_gravity_vec(_obj)
{
	if struct_get(_obj.character_sheet, "body_measures") != undefined
		{
			if struct_get(_obj.character_sheet.body_measures,	"gravity_operation") != undefined
				{
					if _obj.character_sheet.body_measures.gravity_operation[0] > 0
						{
							var _g_mul = 1.;
							var _special_case = 0;	var _clim_pitch_on = 0;
							if _obj.character_sheet.body_measures.gravity_diff[2] < 0//negative up vec to gravity
								{	
									_g_mul = _obj.character_sheet.body_measures.gravity_operation[3];	
									_special_case++;
								};
								
							if abs(_obj.character_sheet.body_measures.gravity_diff[0]) > 0.1//tilt
								{
									_obj.part_dependency_load_reference[0][1][0][0] += (	_obj.character_sheet.body_measures.gravity_operation[1] * _g_mul * sign(_obj.character_sheet.body_measures.gravity_diff[0])	);
									_obj = exe_atribute_increment(_obj,"dizziness_gravity","tilt");
								}
							else	{_special_case++;};
							
							if abs(_obj.character_sheet.body_measures.gravity_diff[1]) > 0.1//pitch
								{
									if _obj.character_sheet.body_measures.gravity_diff[3] != 0	{	_clim_pitch_on = 1;	}
									else	
										{	
											_obj.part_dependency_load_reference[0][1][0][1] += (	_obj.character_sheet.body_measures.gravity_operation[2] * _g_mul * -sign(_obj.character_sheet.body_measures.gravity_diff[1])	);	
											_obj = exe_atribute_increment(_obj,"dizziness_gravity","pitch");
										}
					
								}
							else	{_special_case++;};
							
							//special case ca0.,ca0.,ca-1.; fcking upside down metastable;
							if _special_case > 2
								{
									_obj.part_dependency_load_reference[0][1][0][0] += 99;
									_obj.part_dependency_load_reference[0][1][0][1] += 99;
									_obj = exe_atribute_increment(_obj,"dizziness_gravity","chaos");
								}
							
							if _special_case < 3	&&	_obj.character_sheet.body_measures.gravity_diff[3] != 0.
								{
									if _obj.character_sheet.body_measures.gravity_diff[1] - _obj.character_sheet.body_measures.gravity_diff[3] > 0.1
										{
											{	_obj.part_dependency_load_reference[0][1][0][1] -= (	_obj.character_sheet.body_measures.gravity_operation[2] * _g_mul);	}
										}
									if _obj.character_sheet.body_measures.gravity_diff[1] - _obj.character_sheet.body_measures.gravity_diff[3] < -0.1
										{
											{	_obj.part_dependency_load_reference[0][1][0][1] += (	_obj.character_sheet.body_measures.gravity_operation[2] * _g_mul);	}
										}
								}
							
						}
				}
		}
	return(_obj);
}