function exe_return_local_chance(_biome_paints_in_range)
{
	var _chance = variable_clone(menus.world_control_menu._biome_filter);
	var _bpl = menus.world_control_menu._biome_paint_list;
	for(var _ii = 0; _ii < array_length(_biome_paints_in_range); _ii++)
		{	
			var _ref = _biome_paints_in_range[_ii];
			var _c_bpl = menus.world_control_menu._biome_paint_list[_ref];
			
			var _c_chance = _c_bpl[2][1];
			_chance -= _c_chance;
		}
	return(_chance);
}