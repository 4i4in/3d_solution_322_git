function exe_return_local_granulation(_biome_paints_in_range)
{
	var _granulation = menus.world_control_menu._granulation;
	
	var _bpl = menus.world_control_menu._biome_paint_list;
	for(var _ii = 0; _ii < array_length(_biome_paints_in_range); _ii++)
		{	
			var _ref = _biome_paints_in_range[_ii];
			var _c_bpl = menus.world_control_menu._biome_paint_list[_ref];
			
			var _c_granulation = _c_bpl[2][2];
			//if _c_granulation > _granulation	{	_granulation = _c_granulation;};
			_granulation += _c_granulation;
		}
	_granulation = floor(_granulation/(1 + array_length(_biome_paints_in_range)));
	return(_granulation);
}