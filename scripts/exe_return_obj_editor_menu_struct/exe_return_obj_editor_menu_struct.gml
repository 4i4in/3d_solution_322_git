function exe_return_obj_editor_menu_struct()
{
	var _struct = 
		{
			menu_xsize : 10.5,	menu_ysize : 11.,	menu_background : "_background_1", menu_border : -1,
			xref : floor(dgw/control_array.tile_size) - 2.5,	
			yref : 2.5,
			minimised : 1,
			load_to_screen : 0,	select_by_mouse : 1,	selection_overlay : 1,
			auto_update : 1,	auto_update_time : 17,
			show_page1 : [0,3], page1_names : ["controlable_objects","helpers_objects","static_objects","celestial_objects"],
			obj_num: -1,	obj_hash : -1,
			show_page2 : [0,0],	//part number set inside
			show_page3 : [0,17],	//part details pages
			anim_lerp_timer : 30,	anim_aff : [0,1,1],
			anim_list_bar : [0,0,10],
			cycle_list_bar : [0,0,7],
			measures_list_bar : [0,0,10],
			
			gizmo : 0,	gizmo_translation : 5,	gizmo_rotation : 1,	last_gizmo_func : 0,
			gizmo_func_highlite : 0.,
			gizmo_connector : [0,0,0,0,		0,0,0,0,	0,0,0,0,	0,0,0,0],
			
			spawn_by_pos : 0,//spawn by position or by matrix from gizmo_connector
		};
	return(_struct);
}