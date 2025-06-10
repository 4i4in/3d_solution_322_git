function exe_create_mapeditor_control_menu()
{
	var _this_menu = [];
	
	if menus.mapeditor_control_menu.minimised > 0	//minimsed
		{
			var _menu_xsize = 4;	var _menu_ysize = 0.5;
			var _xref = menus.mapeditor_control_menu.xref;	
			var _yref = menus.mapeditor_control_menu.yref;
	
			var _tsize = control_array.tile_size;
	
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize,menus.mapeditor_control_menu.menu_background,menus.mapeditor_control_menu.menu_border];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.mapeditor_control_menu"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [3,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x192_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "mapeditor"; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.mapeditor_control_menu"];	
			var _info = "info mouse_menu";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_expand";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.mapeditor_control_menu"];	var _info = "expand by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
		}
	else
		{
			var _menu_xsize = menus.mapeditor_control_menu.menu_xsize;	var _menu_ysize = menus.mapeditor_control_menu.menu_ysize;
			var _xref = menus.mapeditor_control_menu.xref;	
			var _yref = menus.mapeditor_control_menu.yref;
	
			var _tsize = control_array.tile_size;
			
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize,menus.mapeditor_control_menu.menu_background,menus.mapeditor_control_menu.menu_border];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.mapeditor_control_menu"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [3,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x192_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "mapeditor"; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.mapeditor_control_menu"];		
			var _info = "info mouse_menu";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_minimise";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.mapeditor_control_menu"];	var _info = "minimise by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			//page_labels
			_xref += _button_size[0] + 1.;
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "<Z"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["mapeditor_control_menu","show_page0",-1];	var _info = "choose previous page";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [4,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = string(menus.mapeditor_control_menu.show_page0_name	[	menus.mapeditor_control_menu.show_page0[0]	]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "current show_page1";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "X>"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["mapeditor_control_menu","show_page0",1];	var _info = "choose next page";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			var _obj = -1;
			if menus.obj_editor.obj_num > -1
				{
					var _selected_object_type = menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]];
					_obj = map3d[$ _selected_object_type][menus.obj_editor.obj_num];
					var _part_ammount = array_length(_obj.part_naming);
					menus.obj_editor.show_page2[1] = _part_ammount -1; //set max page number for part ammount insed obj
					if menus.obj_editor.show_page2[0] > menus.obj_editor.show_page2[1]	{menus.obj_editor.show_page2[0] = 0;}//reset if amount excseded
				}
			
			switch(menus.mapeditor_control_menu.show_page0[0])
				{
					
					case 0:
						_xref = _restricted[0];
						_yref += _button_size[1]+0.2;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "exe_reload_all_for_bigchunk"; var _lclick = "exe_reload_all_coliders_for_given_bigchunk_by_click"; var _rclick = "show_rclick_info"; var _carry = [map3d.world_map_bigchunks.current_bigchunk_load];		
						var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref += _button_size[0] + 0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "coliders build time  : " + string(map3d.static_colider_build_time + map3d.dynamic_colider_build_time); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
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
							
								_xref += _button_size[0]+0.5;
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
								_xref += _button_size[0]+0.5;
								var _button_size = [4,0.75];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_48x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "map directory: " + "\n" + string(map3d.map_directory); var _lclick = "exe_start_typing_and_return"; var _rclick = "show_rclick_info"; var _carry = [["map_directory_edit","none","none"],	["illegal_signs"],	"/",map3d.map_directory];		var _info = "info mouse_menu";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
							}
							
						_xref = _restricted[0]+0.1;
						_yref += _button_size[1] +0.2;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "save map to above\n<ctrl+s>"; var _lclick = "exe_save_map_by_click"; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref += _button_size[0]+0.5;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "choose load map"; var _lclick = "exe_load_map_by_click"; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						//overlay rainbow in shader
						_xref = _restricted[0]+0.1;
						_yref += _button_size[1]+0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back_orange";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
						var _btext = "selection overlay : " + string(menus.obj_editor.selection_overlay); var _lclick = "exe_obj_editor_01_switch"; var _rclick = "show_rclick_info"; var _carry = ["selection_overlay"];	var _info = "selection on screen by mouse click";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
								
						_xref += _button_size[0]+0.5;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back_orange";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "force gizmo <space>"; var _lclick = "exe_force_gizmo_mode"; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						var _spawnin_point = [0,0,0];
						if is_array(menus.srf_by_mouse_menu.xyz_pixel)
							{
								_spawnin_point[0] = menus.srf_by_mouse_menu.xyz_pixel[0];
								_spawnin_point[1] = menus.srf_by_mouse_menu.xyz_pixel[1];
								_spawnin_point[2] = menus.srf_by_mouse_menu.xyz_pixel[2];
							}
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						if menus.obj_editor.spawn_by_pos == 0	{var _pic = "_32x384_back_mark_green";};
						else	{var _pic = "_32x384_back";};
						var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "position : " + string(_spawnin_point); var _lclick = "exe_switch_spawn_by_pos"; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref += _button_size[0] +0.5;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "add_inertial_camera"; var _lclick = "exe_add_dynamic_object_to_map_by_click"; var _rclick = "show_rclick_info"; var _carry = ["exe_add_camera_01",_spawnin_point];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						var _spawnin_matrix = menus.obj_editor.gizmo_connector;
							
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						if menus.obj_editor.spawn_by_pos == 1	{var _pic = "_32x256_back_mark_green";};
						else	{var _pic = "_32x256_back";};
						var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "pos_mat selected : "; var _lclick = "exe_switch_spawn_by_pos"; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [10.5,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = string(_spawnin_matrix); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						//conectors list
						if _obj != -1
							{
								_yref += _button_size[1] +0.1;
								_xref = _restricted[0]-_button_size[0];
								var _conector_list = exe_return_conector_list(_obj);
								
								for(var _cll = 0; _cll < array_length(_conector_list); _cll++)
									{
										if (_xref + _button_size[1] + 1.) < (_restricted[0] + _menu_xsize)	{_xref += _button_size[0];}
										else
											{
												_yref += _button_size[1];
												_xref = _restricted[0];
											}
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										if string(_spawnin_matrix) == string(_conector_list[_cll][1])	{var _pic = "_32x128_back_mark_green";	};
										else	{var _pic = "_32x128_back";	};
										var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = _conector_list[_cll][0]; var _lclick = "exe_push_matrix_to_mapeditor_connector"; var _rclick = "show_rclick_info"; var _carry = [_conector_list[_cll][1]];		var _info = "conector pos_mat" + string(_conector_list[_cll][1]);
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
							}
						
					break;
	//===========================page====================//
					case 1:
						if _obj != -1
							{
								//writable file_name
								var _writable = 0;
								if is_array(keyboard_struct.writing_to)
									{
										if	keyboard_struct.writing_on > 0	&&	keyboard_struct.writing_to[0] == "obj_editor_S1_S2"
											{if keyboard_struct.writing_to[1] == "character_sheet"{if keyboard_struct.writing_to[2] == "name"	{	_writable	= 1;}}};
									}
								if 	_writable > 0
									{
										var _str_cariage = "";
										if game_time mod 50 > 25	{_str_cariage = "_"}
										
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.75];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_48x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "obj name : " + "\n" + string(keyboard_struct.text_input) + string(_str_cariage) + string(keyboard_struct.write_extension); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								else
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.75];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_48x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "obj name : " + "\n" + string(_obj.character_sheet.name); var _lclick = "exe_start_typing_and_return"; var _rclick = "show_rclick_info"; var _carry = [["obj_editor_S1_S2","character_sheet","name"],	["illegal_signs"],	"",_obj.character_sheet.name];	var _info = "page label";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									};
					
								_xref += _button_size[0] +1.;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "hash : " + string(_obj.character_sheet.hash); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "current show_page1";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
			
								//page_labels obj nr /name
								_xref = _restricted[0];
								_yref += _button_size[1] +0.56;
								var _button_size = [0.5,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "<c"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["obj_editor","show_page2",-1];	var _info = "choose previous page";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
			
						//editing
								//writable part_name
								var _writable = 0;
								if is_array(keyboard_struct.writing_to)
									{
										if	keyboard_struct.writing_on > 0	&&	keyboard_struct.writing_to[0] == "obj_editor_S1_show_page2"
											{if keyboard_struct.writing_to[1] == "part_naming"{if keyboard_struct.writing_to[2] == "menus.obj_editor.show_page2"	{	_writable	= 1;}}};
									}
								if 	_writable > 0
									{
										var _str_cariage = "";
										if game_time mod 50 > 25	{_str_cariage = "_"}
							
										_xref += _button_size[0];
										var _button_size = [6,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x512_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
										var _btext = "part : " + string(menus.obj_editor.show_page2[0]) + " | " + string(keyboard_struct.text_input) + string(_str_cariage) + string(keyboard_struct.write_extension); 
										var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "current show_page1";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								else
									{
										_xref += _button_size[0];
										var _button_size = [8,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x512_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
										var _btext = "part : " + string(menus.obj_editor.show_page2[0]) + " | " + string(_obj.part_naming[menus.obj_editor.show_page2[0]]);
										var _lclick = "exe_start_typing_and_return"; var _rclick = "show_rclick_info"; var _carry = [["obj_editor_S1_show_page2","part_naming","menus.obj_editor.show_page2"],	["illegal_signs"],	"",_obj.part_naming[menus.obj_editor.show_page2[0]]];	var _info = "current show_page1";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
						
								_xref += _button_size[0];
								var _button_size = [0.5,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "v>"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["obj_editor","show_page2",1];	var _info = "choose next page";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
					
								_xref += _button_size[0] +0.5;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "part 0\n<space>"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["obj_editor","show_page2",99999];	var _info = "choose next page";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								
								//overlay rainbow in shader
								_xref = _restricted[0];
								_yref += _button_size[1]+0.1;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "selection overlay : " + string(menus.obj_editor.selection_overlay); var _lclick = "exe_obj_editor_01_switch"; var _rclick = "show_rclick_info"; var _carry = ["selection_overlay"];	var _info = "selection on screen by mouse click";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								if menus.obj_editor.select_by_mouse < 0
									{
										_xref += _button_size[0]+0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back_orange";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
										var _btext = "select obj by left click"; var _lclick = "exe_obj_editor_01_switch"; var _rclick = "show_rclick_info"; var _carry = ["select_by_mouse"];	var _info = "selection on screen by mouse click";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								else
									{
										_xref += _button_size[0]+0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back_orange";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
										var _btext = "select obj by right click"; var _lclick = "exe_obj_editor_01_switch"; var _rclick = "show_rclick_info"; var _carry = ["select_by_mouse"];	var _info = "selection on screen by mouse click";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								
								
								_xref += _button_size[0]+0.1;
								var _button_size = [2,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "rot gizmo : " + string(menus.obj_editor.gizmo) + "\n <ctrl+r>"; var _lclick = "exe_switch_editor_gizmo"; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
				//===============================
								var _transform_arr = _obj.part_dependency_load_reference[menus.obj_editor.show_page2[0]][1];
								
								_xref = _restricted[0];
								_yref += _button_size[1] + 0.2;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "sequence length : " + string(array_length(_transform_arr)); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0]+0.1;
								var _button_size = [2,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "copy sequence\n to clipboard"; var _lclick = "exe_set_clipboard_with_carry"; var _rclick = "show_rclick_info"; 
								var _carry = [	"_temp_o.part_dependency_load_reference = ",_obj.part_dependency_load_reference];
								if struct_get(_obj.character_sheet,"anim_pack") != undefined
									{	var _carry = [	"new_pose : ",_obj,"order_by_dependecy_part"];		};
								var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								if struct_get(_obj.character_sheet,"anim_pack") != undefined
									{
										_xref += _button_size[0]+0.1;
										var _button_size = [3,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x192_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "mirror humanoid\n to clipboard"; var _lclick = "exe_set_clipboard_with_carry"; var _rclick = "show_rclick_info"; 
										var _carry = [	"new_pose : ",_obj,"mirror_humanoid_order_by_dependecy_part"];
										var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
									
								_xref = _restricted[0]+0.6;
								_yref += _button_size[1]+0.1;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								if menus.obj_editor.gizmo == 0	{	var _pic = "_32x64_back_mark_green";	}
								else							{	var _pic = "_32x64_back";	};
								var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "tilt"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] + 0.1;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								if menus.obj_editor.gizmo == 0	{	var _pic = "_32x64_back_mark_green";	}
								else							{	var _pic = "_32x64_back";	};	
								var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "pitch"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] + 0.1;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								if menus.obj_editor.gizmo == 0	{	var _pic = "_32x64_back_mark_green";	}
								else							{	var _pic = "_32x64_back";	};	
								var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "yaw"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] + 0.1;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "fwd"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] + 0.1;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "up"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] + 0.1;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "left"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] + 0.1;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								if menus.obj_editor.gizmo == 1	{	var _pic = "_32x64_back_mark_green";	}
								else							{	var _pic = "_32x64_back";	};		
								var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "tilt2"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] + 0.1;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								if menus.obj_editor.gizmo == 1	{	var _pic = "_32x64_back_mark_green";	}
								else							{	var _pic = "_32x64_back";	};		
								var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "pitch2"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] + 0.1;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								if menus.obj_editor.gizmo == 1	{	var _pic = "_32x64_back_mark_green";	}
								else							{	var _pic = "_32x64_back";	};		
								var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "yaw2"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_yref += 1;
								for(var _trarr = 0; _trarr < array_length(_transform_arr); _trarr++)
									{
										_xref = _restricted[0];
										var _button_size = [0.5,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = string(_trarr); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										var _keep_xref = _xref;	var _keep_yref = _yref;
										
										_xref = _restricted[0];
										_yref = _keep_yref +0.5;
										var _button_size = [0.5,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
										var _btext = "copy"; var _lclick = "exe_set_clipboard_with_carry"; var _rclick = "show_rclick_info"; var _carry = [_obj.part_naming[menus.obj_editor.show_page2[0]],_transform_arr];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										for(var _bn = 0; _bn < array_length(_transform_arr[_trarr]); _bn++)
											{
												_xref = _keep_xref + _bn*1.1 + 0.6;
												_yref = _keep_yref -0.5;
												var _button_size = [0.5,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = "+"; var _lclick = "exe_change_dependency_reference_value"; var _rclick = "show_rclick_info"; 
												var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0],	_trarr,	_bn, "add",	1.,3];
												var _info = "load_phy in character_sheet;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
												
												_xref = _keep_xref + _bn*1.1 + 1.1;
												var _button_size = [0.5,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = ".+"; var _lclick = "exe_change_dependency_reference_value"; var _rclick = "show_rclick_info"; 
												var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0],	_trarr,	_bn, "add",	0.05,3];
												var _info = "load_phy in character_sheet;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
												
												_xref = _keep_xref + _bn*1.1 + 0.6;
												_yref = _keep_yref;
												var _button_size = [1,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x64_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = string(_transform_arr[_trarr][_bn]); var _lclick = "exe_change_dependency_reference_value"; var _rclick = "show_rclick_info";
												var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0],	_trarr,	_bn, "set",	0.,3];
												var _info = "load_phy in character_sheet;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
												
												_xref = _keep_xref + _bn*1.1 + 0.6;
												_yref = _keep_yref +0.5;
												var _button_size = [0.5,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = "-"; var _lclick = "exe_change_dependency_reference_value"; var _rclick = "show_rclick_info";
												var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0],	_trarr,	_bn, "add",	-1.,3];
												var _info = "load_phy in character_sheet;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
												
												_xref = _keep_xref + _bn*1.1 + 1.1;
												var _button_size = [0.5,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = ".-"; var _lclick = "exe_change_dependency_reference_value"; var _rclick = "show_rclick_info";
												var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0],	_trarr,	_bn, "add",	-.05,3];
												var _info = "load_phy in character_sheet;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
										_yref += 1.2;
										
									}
								_xref = _restricted[0]+0.2;
								_yref += _button_size[1]-1.;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "force gizmo <space>"; var _lclick = "exe_force_gizmo_mode"; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								//delete	
								_xref += _button_size[0] + 2.;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "delete ctrl+x"; var _lclick = "exe_delete_object_by_hash"; var _rclick = "show_rclick_info"; var _carry = [_obj.character_sheet.hash];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								
								_xref = _restricted[0] + 0.5;
								_yref += _button_size[1] + 0.2;
								var _button_size = [0.5,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "<<"; var _lclick = "exe_gizmo_translation_change"; var _rclick = "show_rclick_info"; var _carry = ["add",-.5];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0];
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "gizmo translation : " + string(menus.obj_editor.gizmo_translation) + " <t>"; var _lclick = "exe_gizmo_translation_change"; var _rclick = "show_rclick_info"; var _carry = ["switch",1];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0];
								var _button_size = [0.5,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = ">>"; var _lclick = "exe_gizmo_translation_change"; var _rclick = "show_rclick_info"; var _carry = ["add",.5];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								//duplicate	
								_xref += _button_size[0] +0.7;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "duplicate ctrl+c"; var _lclick = "exe_duplicate_object_by_hash"; var _rclick = "show_rclick_info"; var _carry = [_obj.character_sheet.hash];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref = _restricted[0] + 0.5;
								_yref += _button_size[1] + 0.1;
								var _button_size = [0.5,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "<<"; var _lclick = "exe_gizmo_rotation_change"; var _rclick = "show_rclick_info"; var _carry = ["add",-.5];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0];
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "gizmo rotation : " + string(menus.obj_editor.gizmo_rotation) + " <r>" ; var _lclick = "exe_gizmo_rotation_change"; var _rclick = "show_rclick_info"; var _carry = ["switch",1];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0];
								var _button_size = [0.5,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = ">>"; var _lclick = "exe_gizmo_rotation_change"; var _rclick = "show_rclick_info"; var _carry = ["add",.5];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] +0.7;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "gizmo scale : " + string(menus.mapeditor_control_menu.gizmo_scale[0])  + " <alt+s>"; var _lclick = "exe_gizmo_change_size"; var _rclick = "show_rclick_info"; var _carry = ["switch",1];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								//shd settings
								var _curent_shader = cam_struct.cam1.shd_helpers;
								//steps
								_xref = _restricted[0];
								_yref += _button_size[1]+0.1;
								var _button_size = [0.5,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shd_helpers",0,-1.,""];;	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
							
								_xref += _button_size[0];
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "shd steps : " + string(_curent_shader[0]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shd_helpers",0,4.,"reset"];	var _info = "s0l1 control";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
							
								_xref += _button_size[0];
								var _button_size = [0.5,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shd_helpers",0,1.,""];;	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
							
								//steps size
								_xref += _button_size[0]+0.5;
								var _button_size = [0.5,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shd_helpers",1,-1.,""];;	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
							
								_xref += _button_size[0];
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "shd size : " + string(_curent_shader[1]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shd_helpers",1,16.,"reset"];	var _info = "s0l1 control";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
							
								_xref += _button_size[0];
								var _button_size = [0.5,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shd_helpers",1,1.,""];;	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
					
							}
						else
							{
								_xref = _restricted[0];
								_yref += _button_size[1] +0.1;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "no object selected"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "selection on screen by mouse click";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
							}
					break;
	//===========================page====================//
					case 2:
						if _obj != -1
							{
								_yref += .2;
								if struct_get(_obj.character_sheet, "items_swaps") != undefined
									{	
										
										_xref = _restricted[0]+0.2;
										_yref += _button_size[1] +0.1;
										var _button_size = [6,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "current : " + string(_obj.part_vbuff_load_reference[menus.obj_editor.show_page2[0]][0]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_yref += 0.1;
										
										var _current_part_name = string(_obj.part_naming[menus.obj_editor.show_page2[0]]);
										var _part_items = reference_struct[$ _obj.character_sheet.items_swaps][$ _current_part_name];
										
										if _part_items == undefined
											{
												_xref = _restricted[0];
												_yref += _button_size[1] +0.1;
												var _button_size = [6,1];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = "no items refered to this part on :\n" + string(_obj.character_sheet.items_swaps); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
										else
											{
												var _sgn_part_items = struct_get_names(_part_items);
												_xref = _restricted[0]+0.1;
												_yref += _button_size[1];
												for(var _inum = 0; _inum < array_length(_sgn_part_items); _inum++)
													{
														var _new_part = _part_items[$ _sgn_part_items[_inum]];
														
														var _button_size = [4,0.5];
														var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
														var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
														var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
														var _btext = string(_sgn_part_items[_inum]); var _lclick = "exe_vbuff_item_in_objcet_change"; var _rclick = "show_rclick_info"; 
														var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0],	_new_part,	0	];
														var _info = "load_phy in character_sheet;";
														var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
														array_push(_this_menu,_button);
														
														_xref += _button_size[0];
														if _xref+4 > _restricted[0] + 8.1	{_xref = _restricted[0]+0.1;	_yref += _button_size[1];};
													}
											}
									}
								else
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "no variable items_swaps"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
							}
						else
							{
								_xref = _restricted[0];
								_yref += _button_size[1] +0.1;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "no object selected"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "selection on screen by mouse click";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
							}
					break;
	//===========================page====================//
					case 3:
						if menus.obj_editor.obj_num > -1
							{
								var _selected_object_type = menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]];
								var _obj = map3d[$ _selected_object_type][menus.obj_editor.obj_num];
								var _part_ammount = array_length(_obj.part_naming);
								menus.obj_editor.show_page2[1] = _part_ammount -1; //set max page number for part ammount insed obj
								if menus.obj_editor.show_page2[0] > menus.obj_editor.show_page2[1]	{menus.obj_editor.show_page2[0] = 0;}//reset if amount excseded
								
								var _base_ref = variable_clone(_obj.character_sheet.bigchunk_pos);
								
								//refsign	3^3
								_xref = _restricted[0]+.1;
								_yref += _button_size[1] +0.1;
								var _button_size = [3,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x192_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "spawn 3^3 ref500"; var _lclick = "exe_spawn_3x3x3_refsign500"; var _rclick = "show_rclick_info"; var _carry = [_base_ref];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								//refsign	z+1
								var _curent_ref = [_base_ref[0],_base_ref[1],_base_ref[2]+1];
								_xref += _button_size[0]+0.2;
								_yref += 0.1;
								var _button_size = [3,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x192_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "refsigns500 z+"; var _lclick = "exe_spawn_refsign500"; var _rclick = "show_rclick_info"; var _carry = [_curent_ref];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								//refsign	y+1
								var _curent_ref = [_base_ref[0],_base_ref[1]+1,_base_ref[2]];
								_xref += _button_size[0]+0.1;
								var _button_size = [3,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x192_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "refsigns500 y+"; var _lclick = "exe_spawn_refsign500"; var _rclick = "show_rclick_info"; var _carry = [_curent_ref];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								//refsign	x-1
								var _curent_ref = [_base_ref[0]-1,_base_ref[1],_base_ref[2]];
								_xref = _restricted[0]+.2;
								_yref += _button_size[1] +0.1;
								var _button_size = [3,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x192_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "refsigns500 x-"; var _lclick = "exe_spawn_refsign500"; var _rclick = "show_rclick_info"; var _carry = [_curent_ref];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								//refsign	
								_xref += _button_size[0]+0.1;
								var _button_size = [3,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x192_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "refsigns500 here"; var _lclick = "exe_spawn_refsign500"; var _rclick = "show_rclick_info"; var _carry = [_base_ref];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								//refsign	x+1
								var _curent_ref = [_base_ref[0]+1,_base_ref[1],_base_ref[2]];
								_xref += _button_size[0]+0.1;
								var _button_size = [3,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x192_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "refsigns500 x+"; var _lclick = "exe_spawn_refsign500"; var _rclick = "show_rclick_info"; var _carry = [_curent_ref];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								
								//refsign	y-1
								var _curent_ref = [_base_ref[0],_base_ref[1]-1,_base_ref[2]];
								_xref = _restricted[0]+.2;
								_yref += _button_size[1] +0.1;
								var _button_size = [3,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x192_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "refsigns500 y-"; var _lclick = "exe_spawn_refsign500"; var _rclick = "show_rclick_info"; var _carry = [_curent_ref];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								//refsign	z-1
								var _curent_ref = [_base_ref[0],_base_ref[1],_base_ref[2]-1];
								_xref += _button_size[0]+0.1;
								var _button_size = [3,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x192_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "refsigns500 z-"; var _lclick = "exe_spawn_refsign500"; var _rclick = "show_rclick_info"; var _carry = [_curent_ref];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0]+0.2;
								_yref += 0.1;
								var _button_size = [3,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x192_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "kill all ref500"; var _lclick = "exe_kill_all_refsign500"; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
							}
							
							
						var _spawnin_point = [0,0,0];
						if is_array(menus.srf_by_mouse_menu.xyz_pixel)
							{
								_spawnin_point[0] = menus.srf_by_mouse_menu.xyz_pixel[0];
								_spawnin_point[1] = menus.srf_by_mouse_menu.xyz_pixel[1];
								_spawnin_point[2] = menus.srf_by_mouse_menu.xyz_pixel[2];
							}
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						if menus.obj_editor.spawn_by_pos == 0	{var _pic = "_32x384_back_mark_green";};
						else	{var _pic = "_32x384_back";};
						var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "position : " + string(_spawnin_point); var _lclick = "exe_switch_spawn_by_pos"; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						
						var _spawnin_matrix = menus.obj_editor.gizmo_connector;
							
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						if menus.obj_editor.spawn_by_pos == 1	{var _pic = "_32x256_back_mark_green";};
						else	{var _pic = "_32x256_back";};
						var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "pos_mat selected : "; var _lclick = "exe_switch_spawn_by_pos"; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [10.5,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = string(_spawnin_matrix); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						if menus.obj_editor.spawn_by_pos == 1
							{
								if string(_spawnin_matrix)	!= string([0,0,0,0,		0,0,0,0,	0,0,0,0,	0,0,0,0])
									{	_spawnin_point = _spawnin_matrix;	};
							}
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "add_single_stone_01"; var _lclick = "exe_add_static_object_to_map_by_click"; var _rclick = "show_rclick_info"; var _carry = ["exe_add_single_stone_01",_spawnin_point];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref += _button_size[0]+0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "add_single_pilar_01"; var _lclick = "exe_add_static_object_to_map_by_click"; var _rclick = "show_rclick_info"; var _carry = ["exe_add_single_pilar_01",_spawnin_point];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "add_single_bush_01"; var _lclick = "exe_add_static_object_to_map_by_click"; var _rclick = "show_rclick_info"; var _carry = ["exe_add_single_bush_01",_spawnin_point];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref += _button_size[0]+0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "add_single_grass_01"; var _lclick = "exe_add_static_object_to_map_by_click"; var _rclick = "show_rclick_info"; var _carry = ["exe_add_single_grass_01",_spawnin_point];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "add_wall_w4h3"; var _lclick = "exe_add_static_object_to_map_by_click"; var _rclick = "show_rclick_info"; var _carry = ["exe_add_single_wall_w4h3_01",_spawnin_point];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref += _button_size[0]+0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "add_tree_01"; var _lclick = "exe_add_static_object_to_map_by_click"; var _rclick = "show_rclick_info"; var _carry = ["exe_add_tree_01",_spawnin_point];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "add_floor_5x5"; var _lclick = "exe_add_static_object_to_map_by_click"; var _rclick = "show_rclick_info"; var _carry = ["exe_add_single_floor_5x5",_spawnin_point];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref += _button_size[0]+0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "add_floor_3x3"; var _lclick = "exe_add_static_object_to_map_by_click"; var _rclick = "show_rclick_info"; var _carry = ["exe_add_single_floor_3x3",_spawnin_point];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "add_corridor_L3_flat"; var _lclick = "exe_add_static_object_to_map_by_click"; var _rclick = "show_rclick_info"; var _carry = ["exe_add_single_corridor_L3_flat",_spawnin_point];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref += _button_size[0]+0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "add_corridor_L3_up"; var _lclick = "exe_add_static_object_to_map_by_click"; var _rclick = "show_rclick_info"; var _carry = ["exe_add_single_corridor_L3_up",_spawnin_point];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "add_corridor_L3_down"; var _lclick = "exe_add_static_object_to_map_by_click"; var _rclick = "show_rclick_info"; var _carry = ["exe_add_single_corridor_L3_down",_spawnin_point];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "add_chamber_5x5sqr"; var _lclick = "exe_add_static_object_to_map_by_click"; var _rclick = "show_rclick_info"; var _carry = ["exe_add_single_chamber_5x5sqr",_spawnin_point];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref += _button_size[0]+0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "exe_add_entrance_5x5"; var _lclick = "exe_add_static_object_to_map_by_click"; var _rclick = "show_rclick_info"; var _carry = ["exe_add_entrance_01",_spawnin_point];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						
					break;
	//===========================page====================//
					case 4:
						var _spawnin_point = [0,0,0];
						if is_array(menus.srf_by_mouse_menu.xyz_pixel)
							{
								_spawnin_point[0] = menus.srf_by_mouse_menu.xyz_pixel[0];
								_spawnin_point[1] = menus.srf_by_mouse_menu.xyz_pixel[1];
								_spawnin_point[2] = menus.srf_by_mouse_menu.xyz_pixel[2];
							}
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						if menus.obj_editor.spawn_by_pos == 0	{var _pic = "_32x384_back_mark_green";};
						else	{var _pic = "_32x384_back";};
						var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "position : " + string(_spawnin_point); var _lclick = "exe_switch_spawn_by_pos"; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						
						var _spawnin_matrix = menus.obj_editor.gizmo_connector;
							
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						if menus.obj_editor.spawn_by_pos == 1	{var _pic = "_32x256_back_mark_green";};
						else	{var _pic = "_32x256_back";};
						var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "pos_mat selected : "; var _lclick = "exe_switch_spawn_by_pos"; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [10.5,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = string(_spawnin_matrix); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						if menus.obj_editor.spawn_by_pos == 1
							{
								if string(_spawnin_matrix)	!= string([0,0,0,0,		0,0,0,0,	0,0,0,0,	0,0,0,0])
									{	_spawnin_point = _spawnin_matrix;	};
							}
							
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "add_door_in_01"; var _lclick = "exe_add_dynamic_object_to_map_by_click"; var _rclick = "show_rclick_info"; var _carry = ["exe_add_door_in_01",_spawnin_point];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "add_humanoid_hero_01"; var _lclick = "exe_add_dynamic_object_to_map_by_click"; var _rclick = "show_rclick_info"; var _carry = ["exe_add_humanoid_sceleton_hero_01",_spawnin_point];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "add_gravity_field_01"; var _lclick = "exe_add_dynamic_object_to_map_by_click"; var _rclick = "show_rclick_info"; var _carry = ["exe_add_gravity_field_01",_spawnin_point];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						
					break;
	//===========================page====================//
					case 5:
						var _spawnin_point = [0,0,0];
						if is_array(menus.srf_by_mouse_menu.xyz_pixel)
							{
								_spawnin_point[0] = menus.srf_by_mouse_menu.xyz_pixel[0];
								_spawnin_point[1] = menus.srf_by_mouse_menu.xyz_pixel[1];
								_spawnin_point[2] = menus.srf_by_mouse_menu.xyz_pixel[2];
							}
						
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [6,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						if menus.obj_editor.spawn_by_pos == 0	{var _pic = "_32x384_back_mark_green";};
						else	{var _pic = "_32x384_back";};
						var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "position : " + string(_spawnin_point); var _lclick = "exe_switch_spawn_by_pos"; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						
						var _spawnin_matrix = menus.obj_editor.gizmo_connector;
							
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						if menus.obj_editor.spawn_by_pos == 1	{var _pic = "_32x256_back_mark_green";};
						else	{var _pic = "_32x256_back";};
						var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "pos_mat selected : "; var _lclick = "exe_switch_spawn_by_pos"; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [10.5,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = string(_spawnin_matrix); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
						if menus.obj_editor.spawn_by_pos == 1
							{
								if string(_spawnin_matrix)	!= string([0,0,0,0,		0,0,0,0,	0,0,0,0,	0,0,0,0])
									{	_spawnin_point = _spawnin_matrix;	};
							}
							
						_xref = _restricted[0];
						_yref += _button_size[1] +0.1;
						var _button_size = [4,0.5];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = "biome_grass01_d100"; var _lclick = "exe_add_helper_object_to_map_by_click"; var _rclick = "show_rclick_info"; var _carry = ["exe_add_paint_grass_01_d100",_spawnin_point];		var _info = "info mouse_menu";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						
					break;
	//===========================page====================//
					case 6:
					break;
	//===========================page====================//
				}

				
		}
	
	return(_this_menu);
}