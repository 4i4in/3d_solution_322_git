function exe_create_world_control_menu()
{
	var _this_menu = [];
	
	if menus.world_control_menu.minimised > 0	//minimsed
		{
			var _menu_xsize = 4;	var _menu_ysize = 0.5;
			var _xref = menus.world_control_menu.xref;	
			var _yref = menus.world_control_menu.yref;
	
			var _tsize = control_array.tile_size;
	
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize,menus.world_control_menu.menu_background,menus.world_control_menu.menu_border];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.world_control_menu"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [3,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x192_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "world_control_menu"; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.world_control_menu"];	
			var _info = "info mouse_menu";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_expand";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.world_control_menu"];	var _info = "expand by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
		}
	else
		{
			var _menu_xsize = menus.world_control_menu.menu_xsize;	var _menu_ysize = menus.world_control_menu.menu_ysize;
			var _xref = menus.world_control_menu.xref;	
			var _yref = menus.world_control_menu.yref;
	
			var _tsize = control_array.tile_size;
			
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize,menus.world_control_menu.menu_background,menus.world_control_menu.menu_border];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.world_control_menu"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [3,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x192_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "world_control_menu"; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.world_control_menu"];		
			var _info = "info mouse_menu";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_minimise";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.world_control_menu"];	var _info = "minimise by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			
			//page_labels obj nr /name
			_xref = _restricted[0];
			_yref += _button_size[1] +0.1;
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "<<"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["world_control_menu","show_page0",-1];	var _info = "choose previous page";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [4,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "page : " + string(menus.world_control_menu.show_page0[0]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "current show_page1";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ">>"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["world_control_menu","show_page0",1];	var _info = "choose next page";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			//pages
			switch(menus.world_control_menu.show_page0[0])
				{
	//===========================================page
					case 0:
					
						_xref = _restricted[0];
						_yref += _button_size[1] + 0.1;
						var _button_size = [2,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "world info"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
			
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "world_sqr_size : " + string(map3d.world_settings.world_sqr_size); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
			
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "world_x_start : " + string(map3d.world_settings.world_x_start); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
			
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "world_y_start : " + string(map3d.world_settings.world_y_start); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
			
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "world_z_start : " + string(map3d.world_settings.world_z_start); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
			
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "chunksize : " + string(map3d.world_settings.chunksize); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
			
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "chunknumber : " + string(map3d.world_settings.chunknumber); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
			
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "chunk_check_range : " + string(map3d.world_settings.chunk_check_range); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
			
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "map_part_size : " + string(map3d.world_settings.map_part_size); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
			
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "chunknumber_in_map_part : " + string(map3d.world_settings.chunknumber_in_map_part); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
			
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "fast_check_scheeme arrsize : " + string(array_length(map3d.world_settings.fast_check_scheeme)); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
			
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "perform_fast_check : " + string(map3d.world_settings.perform_fast_check); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
			
						break;
	//===========================================page
					case 1:
						_xref = _restricted[0];
						_yref += _button_size[1] +0.3;
						var _button_size = [2,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "world functions"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1]+0.2;
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "exe_reload_all_for_bigchunk"; var _lclick = "exe_reload_all_coliders_for_given_bigchunk_by_click"; var _rclick = "show_rclick_info"; var _carry = [map3d.world_map_bigchunks.current_bigchunk_load];		
						var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1]+0.2;
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "exe_grab_collision_statics_array"; var _lclick = "exe_grab_collision_statics_for_current_array_by_click"; var _rclick = "show_rclick_info"; var _carry = [];		
						var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "exe_grab_statics_array_base_only"; var _lclick = "exe_grab_statics_array_base_only_by_click"; var _rclick = "show_rclick_info"; var _carry = [];		
						var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "build_time : " + string(map3d.static_colider_build_time); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
			
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "exe_grab_collision_dynamic_array"; var _lclick = "exe_grab_collision_dynamic_for_current_array_by_click"; var _rclick = "show_rclick_info"; var _carry = [];		
						var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "exe_grab_dynamics_array_base_only"; var _lclick = "exe_grab_dynamic_array_base_only_by_click"; var _rclick = "show_rclick_info"; var _carry = [];		
						var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "build_time : " + string(map3d.dynamic_colider_build_time); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
			
						break;
	//===========================================page
					case 2:
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "bigchunk settings : "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "single_bigchunk_shift : " + string(map3d.world_map_bigchunks.single_bigchunk_shift); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "current_bigchunk_load : " + string(map3d.world_map_bigchunks.current_bigchunk_load); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1] + 0.3;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "set refsigns500 : "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1] + 0.1;
						var _button_size = [0.5,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "<<"; var _lclick = "exe_change_spawn_bchunk"; var _rclick = "show_rclick_info"; var _carry = [0,-1,"add"];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
					
						_xref += _button_size[0];
						var _button_size = [1,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "x : " + string(menus.world_control_menu.spawn_bchunk[0]); var _lclick = "exe_change_spawn_bchunk"; var _rclick = "show_rclick_info"; var _carry = [0,0,"set"];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref += _button_size[0];
						var _button_size = [0.5,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = ">>"; var _lclick = "exe_change_spawn_bchunk"; var _rclick = "show_rclick_info"; var _carry = [0,1,"add"];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						
						_xref += _button_size[0];
						var _button_size = [0.5,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "<<"; var _lclick = "exe_change_spawn_bchunk"; var _rclick = "show_rclick_info"; var _carry = [1,-1,"add"];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
					
						_xref += _button_size[0];
						var _button_size = [1,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "y : " + string(menus.world_control_menu.spawn_bchunk[1]); var _lclick = "exe_change_spawn_bchunk"; var _rclick = "show_rclick_info"; var _carry = [1,0,"set"];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref += _button_size[0];
						var _button_size = [0.5,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = ">>"; var _lclick = "exe_change_spawn_bchunk"; var _rclick = "show_rclick_info"; var _carry = [1,1,"add"];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						
						_xref += _button_size[0];
						var _button_size = [0.5,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "<<"; var _lclick = "exe_change_spawn_bchunk"; var _rclick = "show_rclick_info"; var _carry = [2,-1,"add"];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
					
						_xref += _button_size[0];
						var _button_size = [1,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "z : " + string(menus.world_control_menu.spawn_bchunk[2]); var _lclick = "exe_change_spawn_bchunk"; var _rclick = "show_rclick_info"; var _carry = [2,0,"set"];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref += _button_size[0];
						var _button_size = [0.5,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = ">>"; var _lclick = "exe_change_spawn_bchunk"; var _rclick = "show_rclick_info"; var _carry = [2,1,"add"];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0]+1.;
						_yref += _button_size[1] + 0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "spawn refsigns500"; var _lclick = "exe_spawn_refsign500"; var _rclick = "show_rclick_info"; var _carry = [menus.world_control_menu.spawn_bchunk];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0]+1.;
						_yref += _button_size[1] + 0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "kill all refsigns500"; var _lclick = "exe_kill_all_refsign500"; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.5;
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "bigchunk_x : " + string(map3d.world_map_bigchunks.bigchunk_x_start) + " - " + string(map3d.world_map_bigchunks.bigchunk_x_start + map3d.world_map_bigchunks.single_bigchunk_size); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "bigchunk_y : " + string(map3d.world_map_bigchunks.bigchunk_y_start) + " - " + string(map3d.world_map_bigchunks.bigchunk_y_start + map3d.world_map_bigchunks.single_bigchunk_size); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "bigchunk_z : " + string(map3d.world_map_bigchunks.bigchunk_z_start) + " - " + string(map3d.world_map_bigchunks.bigchunk_z_start + map3d.world_map_bigchunks.single_bigchunk_size); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						break;
	//===========================================page
					case 3:
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "map3d keep_world_settings : "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "world_sqr_size : " + string(map3d.keep_world_settings.world_sqr_size); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "world_x_start : " + string(map3d.keep_world_settings.world_x_start); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "world_y_start : " + string(map3d.keep_world_settings.world_y_start); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "world_z_start : " + string(map3d.keep_world_settings.world_z_start); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "chunknumber : " + string(map3d.keep_world_settings.chunknumber); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						
						
						break;	
	//===========================================page
					case 4:
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "map3d save / load settings"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						//writable map name
						var _writable = 0;
						if is_array(keyboard_struct.writing_to)
							{	if	keyboard_struct.writing_on > 0	&&	keyboard_struct.writing_to[0] == "map_name_edit"	{	_writable	= 1;};	};
						if 	_writable > 0
							{
								var _str_cariage = "";
								if game_time mod 50 > 25	{_str_cariage = "_"}
							
								_xref = _restricted[0]+0.5;
								_yref += _button_size[1] +0.1;
								var _button_size = [4,0.75];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_48x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "map name: " + "\n" + string(keyboard_struct.text_input) + string(_str_cariage) + string(keyboard_struct.write_extension); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
							}
						else
							{
								_xref = _restricted[0]+0.5;
								_yref += _button_size[1] +0.1;
								var _button_size = [4,0.75];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_48x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "map name: " + "\n" + string(map3d.map_name); var _lclick = "exe_start_typing_and_return"; var _rclick = "show_rclick_info"; var _carry = [["map_name_edit","none","none"],	["illegal_signs"],	"",map3d.map_name];		var _info = "info mouse_menu";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
							}
						
						
						//writable map directory
						var _writable = 0;
						if is_array(keyboard_struct.writing_to)
							{	if	keyboard_struct.writing_on > 0	&&	keyboard_struct.writing_to[0] == "map_directory_edit"	{	_writable	= 1;};	};
						if 	_writable > 0
							{
								var _str_cariage = "";
								if game_time mod 50 > 25	{_str_cariage = "_"}
							
								_xref = _restricted[0]+0.5;
								_yref += _button_size[1] +0.1;
								var _button_size = [4,0.75];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_48x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "map directory: " + "\n" + string(keyboard_struct.text_input) + string(_str_cariage) + string(keyboard_struct.write_extension); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
							}
						else
							{
								_xref = _restricted[0]+0.5;
								_yref += _button_size[1] +0.1;
								var _button_size = [4,0.75];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_48x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "map directory: " + "\n" + string(map3d.map_directory); var _lclick = "exe_start_typing_and_return"; var _rclick = "show_rclick_info"; var _carry = [["map_directory_edit","none","none"],	["illegal_signs"],	"/",map3d.map_directory];		var _info = "info mouse_menu";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
							}
							
						_xref = _restricted[0]+0.1;
						_yref += _button_size[1] +0.5;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "save map to above"; var _lclick = "exe_save_map_by_click"; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0]+0.1;
						_yref += _button_size[1] +0.2;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "choose load map"; var _lclick = "exe_load_map_by_click"; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
					
						break;		
	//===========================================page
					case 5:
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "biome generation"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "menu for some triagnle test; experiment;";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [0.5,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "-"; var _lclick = "exe_wm_granulation_add"; var _rclick = "show_rclick_info"; var _carry = [0,-1];		var _info = "menu for some triagnle test; experiment;";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref += _button_size[0] +0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "granulation : " + string(menus.world_control_menu._granulation); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "menu for some triagnle test; experiment;";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
								
						_xref += _button_size[0] +0.1;
						var _button_size = [0.5,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "+"; var _lclick = "exe_wm_granulation_add"; var _rclick = "show_rclick_info"; var _carry = [0,1];		var _info = "granulation frid for biome generation by voliders;";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [0.5,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "-"; var _lclick = "exe_wm_granulation_add"; var _rclick = "show_rclick_info"; var _carry = [1,-1];		var _info = "menu for some triagnle test; experiment;";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref += _button_size[0] +0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "biome filter (-chance) : " + string(menus.world_control_menu._biome_filter); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "menu for some triagnle test; experiment;";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
								
						_xref += _button_size[0] +0.1;
						var _button_size = [0.5,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "+"; var _lclick = "exe_wm_granulation_add"; var _rclick = "show_rclick_info"; var _carry = [1,1];		var _info = "granulation frid for biome generation by voliders;";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [0.5,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "-"; var _lclick = "exe_wm_granulation_add"; var _rclick = "show_rclick_info"; var _carry = [2,-1];		var _info = "menu for some triagnle test; experiment;";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref += _button_size[0] +0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "biome sink : " + string(menus.world_control_menu._biome_sink); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "menu for some triagnle test; experiment;";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
								
						_xref += _button_size[0] +0.1;
						var _button_size = [0.5,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "+"; var _lclick = "exe_wm_granulation_add"; var _rclick = "show_rclick_info"; var _carry = [2,1];		var _info = "granulation frid for biome generation by voliders;";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "create_biome_and_vbuff; t: " + string(menus.world_control_menu._biome_build_time); var _lclick = "create_biome_and_vbuff"; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "generate_biome;";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "biome build t: "	+ string(menus.world_control_menu._biome_build_time) + " | vbuff t : " + string(menus.world_control_menu._biome_vbuff_build_time); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "biome generator info;";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "delete biome vbuff"; var _lclick = "delete_vbuff_by_click"; var _rclick = "show_rclick_info"; var _carry = [vb_combined_biome];		var _info = "delete_biome_vbuff;";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "combine terrain vbuff; t: " + string(menus.world_control_menu._terrain_vbuff_build_time); var _lclick = "exe_terrain_combine_vbuff"; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "generate_biome;";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "delete terrain vbuff"; var _lclick = "delete_vbuff_by_click"; var _rclick = "show_rclick_info"; var _carry = [vb_combined_terrain];		var _info = "delete_combined_terrain_vbuff;";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						
								
						break;	
	//===========================================page
					case 6:
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "moved to mapeditor"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						
					
						break;				
	//===========================================page
					case 7:
					
						break;								
				}
		}
	
	return(_this_menu);
}