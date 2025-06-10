function exe_close_all_other_menus_but(_carry)
{
	var _menu_list = struct_get_names(menus);
	for(var _ii = 0; _ii < array_length(_menu_list);_ii++)
		{
			var _excluded = 0;
			for(var _excl = 0; _excl < array_length(_carry); _excl++)
				{
					if _carry[_excl] == string(_menu_list[_ii])	{_excluded = 1;break};
				}
			if _excluded < 1
				{
					menus[$ _menu_list[_ii]][$ "load_to_screen"] = 0;
				}
		}
}