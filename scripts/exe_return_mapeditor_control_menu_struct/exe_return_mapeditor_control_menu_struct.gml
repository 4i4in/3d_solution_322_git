function exe_return_mapeditor_control_menu_struct()
{
	var _struct = 
		{
			menu_xsize : 10.5,	menu_ysize : 8.5,	menu_background : "_background_1", menu_border : "_border_1",
			xref : floor(dgw/control_array.tile_size) - 2.5,	
			yref : 6.5,
			minimised : 1,
			load_to_screen : 0,
			auto_update : 1,	auto_update_time : 3,
			
			show_page0_name : ["map","object","part skin","spawn static","spawn dynamic","spawn biome","s2"],
			
			show_page0 : [0,6],	//part details pages
			
			gizmo_scale : [1.],//step scaling
		};
	return(_struct);
}