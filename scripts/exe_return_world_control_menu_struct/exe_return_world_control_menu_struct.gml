function exe_return_world_control_menu_struct()
{
	var _struct = 
		{
			menu_xsize : 6,	menu_ysize : 9,	menu_background : "_background_1", menu_border : -1,
			xref : floor(dgw/control_array.tile_size) - 2.5,	
			yref : 5.5,
			minimised : 1,
			load_to_screen : 0,
			auto_update : 1,	auto_update_time : 17,	
			
			activity_control : [],
			obj_list_bar : [0,0,7],
			
			show_page0 : [0,7],	//part details pages
			
			spawn_bchunk : [0,0,0],//spawning big chunk ref
			
			//page 5 biome
			_granulation : 10,	_biome_filter : 980,	_biome_sink : 0.5,	
			_biome_vbuff_build_time : 0,	_biome_build_time : 0,
			_terrain_vbuff_build_time : 0,	_biome_paint_list :[],
		};
	return(_struct);
}