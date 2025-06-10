function exe_create_vbuff_simple_menu()
{
	//this is fullscren menu; maximised only; not moving, freezing 3d
	var _this_menu = [];
	
	var _menu_xsize = menus.vbuff_simple_menu.menu_xsize;	var _menu_ysize = menus.vbuff_simple_menu.menu_ysize;
	var _xref = menus.vbuff_simple_menu.xref;	
	var _yref = menus.vbuff_simple_menu.yref;
	
	var _tsize = control_array.tile_size;
			
	var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize,menus.vbuff_simple_menu.menu_background,menus.vbuff_simple_menu.menu_border];
	array_push(_this_menu,_restricted);
	
	var _button_size = [6,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x384_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "vbuff_simple_menu"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		
	var _info = "vbuff_simple_menu is stoping normal 3d pipeline and hiding all other menus;\nclose it to return to standard operations;";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
			
	
	_xref = _restricted[2]-0.5;
	_yref = _restricted[1];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button_close";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_switch_load_to_screen"; var _rclick = "show_rclick_info"; var _carry = ["vbuff_simple_menu","load_to_screen"];	var _info = "menu on off";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_xref = _restricted[0];
	_yref += _button_size[1]+0.1;
	var _button_size = [4,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "refresh_list"; var _lclick = "exe_kill_list_vbuff_simple_menu_updated"; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "kill list, build new one;";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [4,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "save_list"; var _lclick = "exe_save_list_vbuff_simple_menu_updated"; var _rclick = "show_rclick_info"; var _carry = ["default_vbuff_set","vbuff_lists/"];	var _info = "save list to txt file;";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref = _restricted[0]+0.5;
	_yref += _button_size[1]+0.1;
	var _button_size = [4,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "vbuff name"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "list entry description";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "source"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "list entry description";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "size"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "list entry description";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref = _restricted[0];
	var _keep_yref = _yref + _button_size[1];
	if array_length(menus.vbuff_simple_menu.list_vbuff_simple_menu_updated) > 0
		{
			//show list	
			var _lvsmu = menus.vbuff_simple_menu.list_vbuff_simple_menu_updated;
			menus.vbuff_simple_menu.vbuffs_list_bar[2] = floor(dgh/(control_array.tile_size*0.6) )-4;
			menus.vbuff_simple_menu.vbuffs_list_bar[1] = array_length(_lvsmu);
			var _al_start = menus.vbuff_simple_menu.vbuffs_list_bar[0];
			var _al_end = menus.vbuff_simple_menu.vbuffs_list_bar[0] + menus.vbuff_simple_menu.vbuffs_list_bar[2];
			
			//slide bar
			var _slide = (_al_start / array_length(_lvsmu)) * (menus.vbuff_simple_menu.vbuffs_list_bar[2]) * 0.6;
			if _slide < 0 {_slide=0;};
			
			_xref = _restricted[0];
			_yref = _keep_yref + 0.5;
			var _button_size = [0.5,(menus.vbuff_simple_menu.vbuffs_list_bar[2]-1) + 0.1];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _slide_move = round((mouse_struct.my - _yy1 - _slide * control_array.tile_size) / menus.vbuff_simple_menu.vbuffs_list_bar[2]);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "vbuffs_list_bar_32_vertical_line";	var _pic_mo = string(_pic);	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["vbuff_simple_menu","vbuffs_list_bar",_slide_move,"fast"];;	var _info = "bar";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref = _restricted[0];
			_yref = _keep_yref + _slide;
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ">"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "slider";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			//buttons
			if menus.vbuff_simple_menu.vbuffs_list_bar[0] < 1
				{
					_xref = _restricted[0];
					_yref = _keep_yref
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "-"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "cycle list up is max";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
				}
			else
				{
					_xref = _restricted[0];
					_yref = _keep_yref;
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "-"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["vbuff_simple_menu","vbuffs_list_bar",-1,"fast"];	var _info = "cycle list up";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
				}
			if _al_end > array_length(_lvsmu)-1
				{
					_xref = _restricted[0];
					_yref += menus.vbuff_simple_menu.vbuffs_list_bar[2] * 0.6;
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "+"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "cycle list down is max";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
				}
			else
				{
					_xref = _restricted[0];
					_yref += menus.vbuff_simple_menu.vbuffs_list_bar[2] * 0.6;
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "+"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["vbuff_simple_menu","vbuffs_list_bar",1,"fast"];	var _info = "cycle list down";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
				}
			
			
			_xref = _restricted[0];
			_yref = _keep_yref - _button_size[1] - 0.1;
			for(var _lvpos = _al_start; _lvpos < _al_end;_lvpos++)
				{
					if _lvpos < 1
						{
							_xref = _restricted[0]+0.5;
							_yref += _button_size[1] +0.1;
							var _button_size = [8,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
							var _btext = "=========== vbuffs list start ==========="; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
						}
						
					if _lvpos > -1	&& _lvpos < array_length(_lvsmu)
						{	
							_xref = _restricted[0]+0.5;
							_yref += _button_size[1]+0.1;
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = _lvsmu[_lvpos][0]; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "vbuff name";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
					
							if _lvsmu[_lvpos][3] == "ref"
								{
									_xref += _button_size[0];
									var _button_size = [0.5,0.5];
									var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
									var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
									var _pic = "_32x32_button_green";	var _pic_mo = string(_pic);	var _mouse_over = 0;
									var _btext = "V"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "vbuff current reference :\n" + string(_lvsmu[_lvpos][1]) + "\n" + string(_lvsmu[_lvpos][3]);
									var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
									array_push(_this_menu,_button);
								}
							else
								{
									_xref += _button_size[0];
									var _button_size = [0.5,0.5];
									var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
									var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
									var _pic = "_32x32_button_orange";	var _pic_mo = string(_pic);	var _mouse_over = 0;
									var _btext = "!"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "vbuff current reference :\n" + string(_lvsmu[_lvpos][1]) + "\n" + string(_lvsmu[_lvpos][3]);
									var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
									array_push(_this_menu,_button);
								}
					
							if _lvsmu[_lvpos][2] == "generated"
								{
									_xref += _button_size[0];
									var _button_size = [1,0.5];
									var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
									var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
									var _pic = "_32x64_back_mark_green";	var _pic_mo = string(_pic);	var _mouse_over = 0;
									var _btext = "generic"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "generated; hardcoded vbuff;";
									var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
									array_push(_this_menu,_button);
								}
							else
								{
									if _lvsmu[_lvpos][5] > 0
										{
											_xref += _button_size[0];
											var _button_size = [1,0.5];
											var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
											var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
											var _pic = "_32x64_back_mark_green";	var _pic_mo = string(_pic);	var _mouse_over = 0;
											var _btext = "file"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = _lvsmu[_lvpos][2];
											var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
											array_push(_this_menu,_button);
										}
									else
										{
											_xref += _button_size[0];
											var _button_size = [1,0.5];
											var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
											var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
											var _pic = "_32x64_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
											var _btext = "check!"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "file not found att :\n" + _lvsmu[_lvpos][2];
											var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
											array_push(_this_menu,_button);
										}
								}
								
							if _lvsmu[_lvpos][6] > 0
								{
									_xref += _button_size[0];
									var _button_size = [0.5,0.5];
									var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
									var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
									var _pic = "_32x32_button_green";	var _pic_mo = string(_pic);	var _mouse_over = 0;
									var _btext = "V"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "exe_return_vbuff_by_reference returns vbuff handle correct;";
									var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
									array_push(_this_menu,_button);
								}
							else
								{
									_xref += _button_size[0];
									var _button_size = [0.5,0.5];
									var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
									var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
									var _pic = "_32x32_button_orange";	var _pic_mo = string(_pic);	var _mouse_over = 0;
									var _btext = "!"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "nothing returned from exe_return_vbuff_by_reference as vbuff handle;\n some vbuffs like combined vbuffs, canvas should not rreturn from this function;";
									var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
									array_push(_this_menu,_button);
								}
								
							_xref += _button_size[0];
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = _lvsmu[_lvpos][4]; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "buffer size in bytes;";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button_copy";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ""; var _lclick = "exe_set_clipboard_with_carry"; var _rclick = "show_rclick_info"; var _carry = [_lvsmu[_lvpos]];	var _info = "copy entry to clipboard;";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
						}
					if _lvpos > array_length(_lvsmu)-2
						{
							_xref = _restricted[0]+0.5;
							_yref += _button_size[1]+0.2;
							var _button_size = [8,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
							var _btext = "=========== obj list end ===========\n=click on -/+ to navigate up/down the list="; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
						}
					else if _lvpos == _al_end -1
						{
							_xref = _restricted[0]+0.5;
							_yref += _button_size[1];
							var _button_size = [8,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
							var _btext = "=click on -/+ to navigate up/down the list="; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
						}
					
				}
		}
	else
		{
			//button generate list
		}
			
	return(_this_menu);
}