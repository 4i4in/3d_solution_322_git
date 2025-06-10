function exe_return_from_srf_pixel_color(_question)
{
	var _answer = -1;
	
	switch(_question)
		{
			case "hash" :	_answer = menus.srf_by_mouse_menu.float_pixel[1];	break;
			case "part" :	_answer = menus.srf_by_mouse_menu.float_pixel[2];	break;
			case "xyzpos" :	_answer = menus.srf_by_mouse_menu.xyz_pixel;	break;
		}

	return(_answer);
}