function exe_returnRandom(_num,_significant)
{
	var _seed = random_get_seed();
	var _magic_num = (_seed + floor(_num)) * 48271 + 7841;
	var _moded = _magic_num mod 4294967295;
	var _power_of_ten = power(10, _significant);
	var _last_digits = _moded mod _power_of_ten;
	return(_last_digits);
}