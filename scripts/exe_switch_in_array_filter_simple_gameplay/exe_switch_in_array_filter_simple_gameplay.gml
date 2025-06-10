function exe_switch_in_array_filter_simple_gameplay(_carry)
{
	menus.simple_gameplay_menu.activity_filter[_carry[0]] = !menus.simple_gameplay_menu.activity_filter[_carry[0]];
	menus.simple_gameplay_menu.activity_control = [];
	mouse_struct.mtime = 3;
	reset_current_menu_array = 1;
}