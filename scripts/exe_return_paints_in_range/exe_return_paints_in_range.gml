function exe_return_paints_in_range(_triangle_here)
{
	var _biome_paints_in_range = [];
	
	var _p1 = _triangle_here[0];
	var _p2 = _triangle_here[1];
	var _p3 = _triangle_here[2];
	var _pn = _triangle_here[4];
	
	var _bpl = menus.world_control_menu._biome_paint_list;
	
	
	for(var _ii = 0; _ii < array_length(_bpl); _ii++)
		{	
			var _in_range = 0;
			var _biome_x = _bpl[_ii][0][0];
			var _biome_y = _bpl[_ii][0][1];
			var _biome_z = _bpl[_ii][0][2];
			var _biome_r = _bpl[_ii][2][0];
			if point_distance_3d(_biome_x,_biome_y,_biome_z,_p1[0],_p1[1],_p1[2]) < _biome_r	{_in_range = 1;};
			if point_distance_3d(_biome_x,_biome_y,_biome_z,_p2[0],_p2[1],_p2[2]) < _biome_r	{_in_range = 1;};
			if point_distance_3d(_biome_x,_biome_y,_biome_z,_p3[0],_p3[1],_p3[2]) < _biome_r	{_in_range = 1;};
			
			if _in_range > 0	{array_push(_biome_paints_in_range,_ii);};
		}
	
	return(_biome_paints_in_range);
}