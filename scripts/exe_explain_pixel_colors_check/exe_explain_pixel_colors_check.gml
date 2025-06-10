function exe_explain_pixel_colors_check()
{
	var _str = "";
	var _col = menus.srf_by_mouse_menu.color_pixel[0];
	var _colr256 = floor(_col / 65536.);
	var _colr65536 = _colr256 * 65536.;
	var _colg256 = floor((_col - _colr65536) / 256.);
	var _colb256 = floor(_col - _colr65536 - _colg256 * 256.);
	
	_str += "pos 0 color : "; _str+="\n";
	_str += "r : " + string(_colr256);	_str += " | g : " + string(_colg256);	_str += " | b : " + string(_colb256);	_str+="\n";
	
	
	var _col = menus.srf_by_mouse_menu.color_pixel[1];
	var _colr256 = floor(_col / 65536.);
	var _colr65536 = _colr256 * 65536.;
	var _colg256 = floor((_col - _colr65536) / 256.);
	var _colb256 = floor(_col - _colr65536 - _colg256 * 256.);
	
	_colr256 /= 256.;	_colg256 /= 256.;	_colb256 /= 256.;
	_colr256 -=0.5;	_colg256 -=0.5;	_colb256 -=0.5;
	_colr256 *=2.;	_colg256 *=2.;	_colb256 *=2.;
	
	_str += "pos 1 normal noised : "; _str+="\n";
	_str += "x : " + string(_colr256);	_str += " | y : " + string(_colg256);	_str += " | z : " + string(_colb256);	_str+="\n";
	
	
	var _col = menus.srf_by_mouse_menu.color_pixel[2];
	_str += "pos 2 light : "; _str+= string(_col);	_str+="\n";
	_str+="=======================================";
	menus.srf_by_mouse_menu.color_pixel_translated = _str;


	var _str = "";
	var _col = menus.srf_by_mouse_menu.normal_pixel[0];
	var _colr256 = floor(_col / 65536.);
	var _colr65536 = _colr256 * 65536.;
	var _colg256 = floor((_col - _colr65536) / 256.);
	var _colb256 = floor(_col - _colr65536 - _colg256 * 256.);
	
	_str += "pos 0 crosshatch : "; _str+="\n";
	_str += "r : " + string(_colr256);	_str += " | g : " + string(_colg256);	_str += " | b : " + string(_colb256);	_str+="\n";
	
	var _col = menus.srf_by_mouse_menu.normal_pixel[1];
	_str += "pos 1 material : "; _str+= string(_col);	_str+="\n";
	
	var _col = menus.srf_by_mouse_menu.normal_pixel[2];
	var _colr256 = floor(_col / 65536.);
	var _colr65536 = _colr256 * 65536.;
	var _colg256 = floor((_col - _colr65536) / 256.);
	var _colb256 = floor(_col - _colr65536 - _colg256 * 256.);
	
	_colr256 /= 256.;	_colg256 /= 256.;	_colb256 /= 256.;
	_colr256 -=0.5;	_colg256 -=0.5;	_colb256 -=0.5;
	_colr256 *=2.;	_colg256 *=2.;	_colb256 *=2.;
	
	_str += "pos 2 flat normals : "; _str+="\n";
	_str += "x : " + string(_colr256);	_str += " | y : " + string(_colg256);	_str += " | z : " + string(_colb256);	_str+="\n";
	_str+="=======================================";
	menus.srf_by_mouse_menu.normal_pixel_translated = _str;
	
	
	var _str = "";
	var _col = menus.srf_by_mouse_menu.float_pixel[0];
	_str += "pos 0 cam distance to px : " + string(_col); _str+="\n";
	var _col = menus.srf_by_mouse_menu.float_pixel[1];
	_str += "pos 1 obj hash : " + string(_col); _str+="\n";
	var _col = menus.srf_by_mouse_menu.float_pixel[2];
	_str += "pos 2 obj part no : " + string(_col); _str+="\n";
	_str+="=====================================";
	menus.srf_by_mouse_menu.float_pixel_translated = _str;
	
	
	
	var _str = "";
	_str += "world x,y,z position : "; _str+="\n";
	_str += "X : " + string(menus.srf_by_mouse_menu.xyz_pixel[0]);
	_str += " | Y : " + string(menus.srf_by_mouse_menu.xyz_pixel[1]);
	_str += " | Z : " + string(menus.srf_by_mouse_menu.xyz_pixel[2]);
	_str+="\n";	_str+="=====================================";
	menus.srf_by_mouse_menu.xyz_pixel_translated = _str;
	
	
	
	
	var _str = "";
	var _col = menus.srf_by_mouse_menu.help_pixel[0];
	var _colr256 = floor(_col / 65536.);
	var _colr65536 = _colr256 * 65536.;
	var _colg256 = floor((_col - _colr65536) / 256.);
	var _colb256 = floor(_col - _colr65536 - _colg256 * 256.);
	
	_str += "pos 0 helper color : "; _str+="\n";
	_str += "r : " + string(_colr256);	_str += " | g : " + string(_colg256);	_str += " | b : " + string(_colb256);	_str+="\n";
	
	var _col = menus.srf_by_mouse_menu.help_pixel[1];
	_str += "pos 1 help obj hash : " + string(_col); _str+="\n";
	
	var _col = menus.srf_by_mouse_menu.help_pixel[2];
	_str += "pos 1 function : " + string(_col); _str+="\n";
	_str+="=====================================";
	
	menus.srf_by_mouse_menu.help_pixel_translated = _str;
	
}