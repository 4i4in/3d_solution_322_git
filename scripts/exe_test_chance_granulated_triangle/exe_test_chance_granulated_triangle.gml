function exe_test_chance_granulated_triangle(_ret_arr,_chance)
{
	var _new_ret_arr = [];
	for(var _i = 0; _i < array_length(_ret_arr); _i++)
		{
			var _p1 = _ret_arr[_i];
			
			var _mnum = (	(floor(_p1[0])+_i*439) mod 2003	) + (	(floor(_p1[1])+_i*313) mod 2011	) + (	(floor(_p1[2])+_i*227) mod 1999	) + _i*683;
			var _val = exe_returnRandom(_mnum,3);
			
			if _val > _chance
				{
					array_push(_new_ret_arr,_p1);
				}	
		}
	
	return(_new_ret_arr);
}