function exe_simple_gameplay_control(_carry)
{
	var _tac = _carry[0];
	var _ref = _carry[1];
	
	try
		{
			var _cobj = menus.simple_gameplay_menu.activity_control[_tac];
			var _hash = _cobj[1];
		}
	catch(_)	
		{
			exe_draw_text_on_background([dgw/2,dgh/2,"exe_simple_gameplay_control fail","center",c_maroon,0.7,c_white,1.,3]);
			show_debug_message("exe_simple_gameplay_control fail");//need logfile
			reset_current_menu_array = 1;
			exit;
		}
		
	switch(_ref)
		{
			case 2:
				var _nn =  exe_find_arr_num_by_hash("controlable_objects",_hash);
				if _nn < 0	{break;};
				var _obj = map3d.controlable_objects[_nn];
				_obj.control_method.active[0] = !_obj.control_method.active[0];
				//menus.simple_gameplay_menu.activity_control[_tac][2] = _obj.control_method.active[0];
				break;
				
			case 3:
				menus.simple_gameplay_menu.activity_control[_tac][3] = !menus.simple_gameplay_menu.activity_control[_tac][3];
				//menus.simple_gameplay_menu.activity_control[_tac][4] = 0;
				
				var _nn =  exe_find_arr_num_by_hash("controlable_objects",_hash);
				if _nn < 0	{break;};
				var _obj = map3d.controlable_objects[_nn];
				if menus.simple_gameplay_menu.activity_control[_tac][3] == 0
					{	_obj.control_method.camera[0] = 0;	}
				else
					{	
						_obj.control_method.camera[0] = 1;
						_obj.control_method.camera[1] = "cam1";
					}
				break;
				
			case 4:
				menus.simple_gameplay_menu.activity_control[_tac][4] = !menus.simple_gameplay_menu.activity_control[_tac][4];
				//menus.simple_gameplay_menu.activity_control[_tac][3] = 0;
				
				var _nn =  exe_find_arr_num_by_hash("controlable_objects",_hash);
				if _nn < 0	{break;};
				var _obj = map3d.controlable_objects[_nn];
				if menus.simple_gameplay_menu.activity_control[_tac][4] == 0
					{	_obj.control_method.camera[0] = 0;	}
				else
					{	
						_obj.control_method.camera[0] = 1;
						_obj.control_method.camera[1] = "cam2";
					}
				break;
			case 5:
				var _nn =  exe_find_arr_num_by_hash("controlable_objects",_hash);
				if _nn < 0	{break;};
				switch(menus.simple_gameplay_menu.activity_control[_tac][5])
					{
						case "keymouse": 
							var _carry2 = ["controlable_objects",_nn,"pad0"];	
							exe_change_controller_in_object(_carry2);
							break;
							
						case "pad0": 
							var _carry2 = ["controlable_objects",_nn,"pad1"];	
							exe_change_controller_in_object(_carry2);
							break;
							
						case "pad1": 
							var _carry2 = ["controlable_objects",_nn,"none"];	
							exe_change_controller_in_object(_carry2);
							break;
							
						case "noone": 
							var _carry2 = ["controlable_objects",_nn,"mouse_keyboard"];	
							exe_change_controller_in_object(_carry2);
							break;
					}
				break;
		}
	menus.simple_gameplay_menu.activity_control = [];
	reset_current_menu_array = 1;
}