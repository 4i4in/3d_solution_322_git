function exe_kill_triangles_hash_in_static_coliders(_objhash)
{
	exe_recover_original_worlds_setting();
	for(var _xx = 0; _xx < map3d.world_settings.chunknumber; _xx++)
		{
			for(var _yy = 0; _yy < map3d.world_settings.chunknumber; _yy++)
				{
					for(var _zz = 0; _zz < map3d.world_settings.chunknumber; _zz++)
						{
							var _triangle_array_to_check = map3d.all_static_colider_arr[_xx][_yy][_zz];
							
							if _objhash == "any"	{	_triangle_array_to_check = [];	}
							else
								{
									for(var _tia = array_length(_triangle_array_to_check)-1; _tia > -1; _tia--)
										{
											var _triangle_here = _triangle_array_to_check[_tia];
											if string(_triangle_here[5]) == string(_objhash)
												{
													array_delete(_triangle_array_to_check,_tia,1);
												}
										}
								}
							map3d.all_static_colider_arr[_xx][_yy][_zz] = _triangle_array_to_check;
						}
				}
		}
	//exe_sign_off_colision_settings_to_all();
}