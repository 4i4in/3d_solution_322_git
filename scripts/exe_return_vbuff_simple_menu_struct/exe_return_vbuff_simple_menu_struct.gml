function exe_return_vbuff_simple_menu_struct()
{
	var _struct = 
		{
			menu_xsize : dgw/control_array.tile_size,	menu_ysize : dgh/control_array.tile_size,		menu_background : "_background_1", menu_border : -1,
			xref : 0.,	
			yref : 0.,
			minimised : 0,
			load_to_screen : 0,
			auto_update : 1,	auto_update_time : 5,
			
			list_vbuff_simple_menu_updated : [],	vbuffs_list_bar : [0,0,20],
			
		};
	return(_struct);
}