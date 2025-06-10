function exe_atribute_increment(_obj,_atribute,_reason)
{
	switch(_atribute)
		{
			case "dizziness_gravity":
				switch(_reason)
					{
						case "tilt":
							_obj.character_sheet.body_measures.dizziness_gravity += abs(_obj.character_sheet.body_measures.gravity_diff[0]) * 1.5;
							break;
						case "pitch":
							_obj.character_sheet.body_measures.dizziness_gravity += abs(_obj.character_sheet.body_measures.gravity_diff[1]);
							break;
						case "chaos":
							_obj.character_sheet.body_measures.dizziness_gravity += random(10);
							break;
					}
				break;
		}
	return(_obj)
}