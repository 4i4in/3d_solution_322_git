function exe_mapeditor_key_shortcuts()
{
	//menu left right
	if keyboard_struct.Z > 0	&&	keyboard_struct.CONTROL < 1	&& keyboard_struct.ktime < 0
		{
			exe_change_page_in_menu(["mapeditor_control_menu","show_page0",-1]);
			keyboard_struct.ktime = keyboard_struct.key_cool;
			keyboard_struct.Z = 0;
		}
	if keyboard_struct.X > 0	&&	keyboard_struct.CONTROL < 1	&& keyboard_struct.ktime < 0
		{
			exe_change_page_in_menu(["mapeditor_control_menu","show_page0",1]);
			keyboard_struct.ktime = keyboard_struct.key_cool;
			keyboard_struct.X = 0;
		}
	//part left right
	if keyboard_struct.C > 0	&&	keyboard_struct.CONTROL < 1	&& keyboard_struct.ktime < 0
		{
			exe_change_page_in_menu(["obj_editor","show_page2",-1]);
			keyboard_struct.ktime = keyboard_struct.key_cool;
			keyboard_struct.Z = 0;
		}
	if keyboard_struct.V > 0	&&	keyboard_struct.CONTROL < 1	&& keyboard_struct.ktime < 0
		{
			exe_change_page_in_menu(["obj_editor","show_page2",1]);
			keyboard_struct.ktime = keyboard_struct.key_cool;
			keyboard_struct.Z = 0;
		}
	//force gizmo
	if keyboard_struct.SPACE	&& keyboard_struct.ktime < 0
		{
			exe_force_gizmo_mode([]);
			exe_change_page_in_menu(["obj_editor","show_page2",99999]);
			keyboard_struct.ktime = keyboard_struct.key_cool;
			keyboard_struct.SPACE = 0;
		}
	//delete
	if keyboard_struct.X > 0	&&	keyboard_struct.CONTROL > 0	&& keyboard_struct.ktime < 0
		{
			//exe_delete_object_by_hash
			if menus.obj_editor.obj_num > -1
				{
					var _selected_object_type = menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]];
					var _obj_hash = map3d[$ _selected_object_type][menus.obj_editor.obj_num][$ "character_sheet"][$ "hash"];
					exe_delete_object_by_hash([_obj_hash]);
					keyboard_struct.ktime = keyboard_struct.key_cool;
					keyboard_struct.X = 0;
				}
		}
	//duplicate
	if keyboard_struct.C > 0	&&	keyboard_struct.CONTROL > 0	&& keyboard_struct.ktime < 0
		{
			//exe_duplicate_object_by_hash
			if menus.obj_editor.obj_num > -1
				{
					var _selected_object_type = menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]];
					var _obj_hash = map3d[$ _selected_object_type][menus.obj_editor.obj_num][$ "character_sheet"][$ "hash"];
					exe_duplicate_object_by_hash([_obj_hash]);
					keyboard_struct.ktime = keyboard_struct.key_cool;
					keyboard_struct.C = 0;
				}
		}
	//save map
	if keyboard_struct.S > 0	&&	keyboard_struct.CONTROL > 0	&& keyboard_struct.ktime < 0
		{
			exe_save_map_by_click([]);
			keyboard_struct.ktime = keyboard_struct.key_cool;
			keyboard_struct.S = 0;
		}
	//switch gizmo
	if keyboard_struct.R > 0	&&	keyboard_struct.CONTROL > 0	&& keyboard_struct.ktime < 0
		{
			exe_switch_editor_gizmo([]);
			keyboard_struct.ktime = keyboard_struct.key_cool;
			keyboard_struct.R = 0;
		}
	//switch gizmo translation
	if keyboard_struct.T > 0	&&	keyboard_struct.CONTROL < 1	&& keyboard_struct.ktime < 0
		{
			exe_gizmo_translation_change(["switch",1]);
			keyboard_struct.ktime = keyboard_struct.key_cool;
			keyboard_struct.T = 0;
		}
	//switch gizmo rotation
	if keyboard_struct.R > 0	&&	keyboard_struct.CONTROL < 1	&& keyboard_struct.ktime < 0
		{
			exe_gizmo_rotation_change(["switch",1]);
			keyboard_struct.ktime = keyboard_struct.key_cool;
			keyboard_struct.R = 0;
		}
	//switch gizmo scale
	if keyboard_struct.S > 0	&&	keyboard_struct.ALT > 0	&& keyboard_struct.ktime < 0
		{
			exe_gizmo_change_size(["switch",1]);
			keyboard_struct.ktime = keyboard_struct.key_cool;
			keyboard_struct.S = 0;
		}
			
}