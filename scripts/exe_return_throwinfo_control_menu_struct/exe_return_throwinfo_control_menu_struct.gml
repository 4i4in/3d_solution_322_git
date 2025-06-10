function exe_return_throwinfo_control_menu_struct()
{
	var _struct = 
		{
			menu_xsize : 4,	menu_ysize : 0.5,	menu_background : "_background_7", menu_border : -1,
			xref : floor(dgw/control_array.tile_size) - 2.5,	
			yref : 6.,
			minimised : 1,
			load_to_screen : 0,
			auto_update : 1,	auto_update_time : 11,
			
			infostring : "",
			
		};
	return(_struct);
}