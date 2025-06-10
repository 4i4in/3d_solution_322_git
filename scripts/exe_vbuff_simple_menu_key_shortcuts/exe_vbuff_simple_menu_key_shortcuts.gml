function exe_vbuff_simple_menu_key_shortcuts()
{
	//slide list
	if mouse_struct.wUD != 0
		{
			exe_change_page_in_menu(["vbuff_simple_menu","vbuffs_list_bar",-mouse_struct.wUD*3,"fast"]);
		}
}