function exe_return_valid_biome(_dot_div_group)
{
	var _valid_biome = 0;
	for(var _ii = 0; _ii < array_length(_dot_div_group); _ii++)
		{
			if 	_dot_div_group[_ii] > 0	{_valid_biome = _ii;};
		}
	return(_valid_biome);
}