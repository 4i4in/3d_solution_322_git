function exe_create_throwinfo_control_menu()
{
	var _this_menu = [];
	
	if menus.throwinfo_control_menu.minimised > 0	//minimsed
		{
			var _menu_xsize = 4;	var _menu_ysize = 0.5;
			var _xref = menus.throwinfo_control_menu.xref;	
			var _yref = menus.throwinfo_control_menu.yref;
	
			var _tsize = control_array.tile_size;
	
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize,menus.throwinfo_control_menu.menu_background,menus.throwinfo_control_menu.menu_border];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.throwinfo_control_menu"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [3,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x192_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "throwinfo_control_menu"; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.throwinfo_control_menu"];	
			var _info = "info mouse_menu";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_expand";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.throwinfo_control_menu"];	var _info = "expand by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
		}
	else
		{
			var _menu_xsize = menus.throwinfo_control_menu.menu_xsize;	var _menu_ysize = menus.throwinfo_control_menu.menu_ysize;
			var _xref = menus.throwinfo_control_menu.xref;	
			var _yref = menus.throwinfo_control_menu.yref;
	
			var _tsize = control_array.tile_size;
			
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize,menus.throwinfo_control_menu.menu_background,menus.throwinfo_control_menu.menu_border];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.throwinfo_control_menu"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [3,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x192_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "throwinfo_control_menu"; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.throwinfo_control_menu"];		
			var _info = "info mouse_menu";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_minimise";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.throwinfo_control_menu"];	var _info = "minimise by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			
			var _infostring = menus.throwinfo_control_menu.infostring;
			if _infostring = ""	{_infostring = "empty;";};
			var _text_w = string_width(_infostring);
			var _text_h = string_height(_infostring);
			var _bx = (_text_w+2)/control_array.tile_size;
			var _by = (_text_h+2)/control_array.tile_size;
			
			_xref = _restricted[0];
			_yref += _button_size[1];
			var _button_size = [_bx,_by];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "throwinfo_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
			var _btext = _infostring; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];		var _info = "info mouse_menu";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			
		}
	
	return(_this_menu);
}