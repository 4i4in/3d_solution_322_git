function exe_return_test_menu_struct()
{
	var _struct = 
		{
			menu_xsize : 3.,	menu_ysize : 2.5,	menu_background : "_background_2", menu_border : -1,
			xref : floor(dgw/control_array.tile_size) - 2.5,	
			yref : 0.5,
			minimised : 1,
			load_to_screen : 0,
			auto_update : 1,	auto_update_time : 1,
		};
	return(_struct);
}