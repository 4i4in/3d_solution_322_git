function execute_function(_func,_carry,_txt)
{
	var _fexe = 0; // function_executed
	switch(_func)
		{
			//right clisk info
			case "show_rclick_info":
				if string(_txt) == string(mouse_info.txt)	{_txt="";};
				mouse_info.txt = _txt;	mouse_info.mx = mouse_struct.mx;	mouse_info.my = mouse_struct.my;
				_fexe = 1;	break;
				
			//menu operations
			case "exe_move_menu_by_click":	exe_move_menu_by_click(_carry);	_fexe = 1;	break;
			case "exe_min_max_menu" : exe_min_max_menu_by_click(_carry); _fexe = 1;	break;
			case "exe_swich_help_in_menu" : exe_swich_help_in_menu(_carry); _fexe = 1;	break;
			case "exe_switch_load_to_screen" : exe_switch_load_to_screen(_carry); _fexe = 1;	break;
			case "exe_change_page_in_menu" : exe_change_page_in_menu(_carry); _fexe = 1;	break;
			case "exe_start_typing_and_return" : exe_start_typing_and_return(_carry); _fexe = 1;	break;
			
			case "exe_freeze_3d_operations":	exe_freeze_3d_operations(_carry);	_fexe = 1;	break;
			
			// pad menu operations
			case "exe_change_show_pad" : exe_change_show_pad(_carry); _fexe = 1;	break;
			
			// cam menu operations
			case "exe_change_show_cam" : exe_change_show_cam(_carry); _fexe = 1;	break;
			case "exe_switch_in_cam" : exe_switch_in_cam(_carry); _fexe = 1;	break;
			case "exe_change_shader_settings_in_cam" : exe_change_shader_settings_in_cam(_carry); _fexe = 1;	break;
			
			// obj menu
			case "exe_change_obj_in_editor_menu" : exe_change_obj_in_editor_menu(_carry); _fexe = 1;	break;
			case "exe_obj_editor_01_switch" : exe_obj_editor_01_switch(_carry); _fexe = 1;	break;
			
			case "exe_in_obj_add_value" : exe_in_obj_add_value(_carry); _fexe = 1;	break;
			case "exe_change_dependency_reference_value" : exe_change_dependency_reference_value(_carry); _fexe = 1;	break;
			case "exe_set_clipboard_with_carry" : exe_set_clipboard_with_carry(_carry); _fexe = 1;	break;
			case "exe_enforce_pose_on_obj" : exe_enforce_pose_on_obj(_carry); _fexe = 1;	break;
			case "exe_push_anim_stack_on_obj" : exe_push_anim_stack_on_obj(_carry); _fexe = 1;	break;
			case "exe_push_detector_stack_on_obj" : exe_push_detector_stack_on_obj(_carry); _fexe = 1;	break;
			
			case "exe_obj_editor_change_anim_lerp_timer" : exe_obj_editor_change_anim_lerp_timer(_carry); _fexe = 1;	break;
			case "exe_change_part_scale_vbuff" : exe_change_part_scale_vbuff(_carry); _fexe = 1;	break;
			
			case "exe_push_anim_cycle_on_obj" : exe_push_anim_cycle_on_obj(_carry); _fexe = 1;	break;
			case "exe_remove_anchor_in_object" : exe_remove_anchor_in_object(_carry); _fexe = 1;	break;
			
			case "exe_change_controller_in_object" : exe_change_controller_in_object(_carry); _fexe = 1;	break;
			case "exe_change_in_cam_in_object" : exe_change_in_cam_in_object(_carry); _fexe = 1;	break;
			case "exe_vbuff_item_in_objcet_change" : exe_vbuff_item_in_objcet_change(_carry); _fexe = 1;	break;
			case "exe_switch_anim_pack_anim_cycles_in_obj" : exe_switch_anim_pack_anim_cycles_in_obj(_carry); _fexe = 1;	break;
			case "exe_change_value_in_body_measures" : exe_change_value_in_body_measures(_carry); _fexe = 1;	break;
			
			case "exe_change_part_material" : exe_change_part_material(_carry); _fexe = 1;	break;
			
			case "exe_delete_object_by_hash" : exe_delete_object_by_hash(_carry); _fexe = 1;	break;
			case "exe_duplicate_object_by_hash" : exe_duplicate_object_by_hash(_carry); _fexe = 1;	break;
			
			case "exe_switch_editor_gizmo" : exe_switch_editor_gizmo(_carry); _fexe = 1;	break;
			case "exe_force_gizmo_mode" : exe_force_gizmo_mode(_carry); _fexe = 1;	break;
			
			case "exe_gizmo_translation_change" : exe_gizmo_translation_change(_carry); _fexe = 1;	break;
			case "exe_gizmo_rotation_change" : exe_gizmo_rotation_change(_carry); _fexe = 1;	break;
			
			case "exe_move_respawn_space_trigger" : exe_move_respawn_space_trigger(_carry); _fexe = 1;	break;
			
			//graphic control menu operations
			case "exe_switch_show_surf" : exe_switch_show_surf(_carry); _fexe = 1;	break;
			case "exe_switch_split_screen" : exe_switch_split_screen(_carry); _fexe = 1;	break;
			
			//time_control_menu operations
			case "exe_time_control_pause" : exe_time_control_pause(_carry); _fexe = 1;	break;
			case "exe_activity_control" :	exe_activity_control(_carry); _fexe = 1;	break;
			case "exe_time_control_menu_click_speed" :	exe_time_control_menu_click_speed(_carry); _fexe = 1;	break;
			
			//simple_gameplay_control
			case "exe_simple_gameplay_control" :	exe_simple_gameplay_control(_carry); _fexe = 1;	break;
			case "exe_force_gameplay_mode" :		exe_force_gameplay_mode(_carry); _fexe = 1;	break;
			case "exe_switch_in_array_filter_simple_gameplay" :		exe_switch_in_array_filter_simple_gameplay(_carry); _fexe = 1;	break;
			case "exe_force_combined_vbuffs_gameplay_mode" :		exe_force_combined_vbuffs_gameplay_mode(_carry); _fexe = 1;	break;
			
			//wolrd control menu
			case "exe_reload_all_coliders_for_given_bigchunk_by_click" :			exe_reload_all_coliders_for_given_bigchunk_by_click(_carry); _fexe = 1;	break;
			
			case "exe_grab_collision_statics_for_current_array_by_click" :			exe_grab_collision_statics_for_current_array_by_click(_carry); _fexe = 1;	break;
			case "exe_grab_collision_dynamic_for_current_array_by_click" :			exe_grab_collision_dynamic_for_current_array_by_click(_carry); _fexe = 1;	break;
			
			case "exe_grab_statics_array_base_only_by_click" :			exe_grab_statics_array_base_only_by_click(_carry); _fexe = 1;	break;
			case "exe_grab_dynamic_array_base_only_by_click" :			exe_grab_dynamic_array_base_only_by_click(_carry); _fexe = 1;	break;
			
			case "exe_change_spawn_bchunk" :			exe_change_spawn_bchunk(_carry); _fexe = 1;	break;
			case "exe_spawn_refsign500" :				exe_spawn_refsign500(_carry); _fexe = 1;	break;
			case "exe_spawn_3x3x3_refsign500" :			exe_spawn_3x3x3_refsign500(_carry); _fexe = 1;	break;
			case "exe_kill_all_refsign500" :			exe_kill_all_refsign500(_carry); _fexe = 1;	break;
			
			case "exe_save_map_by_click" :			exe_save_map_by_click(_carry); _fexe = 1;	break;
			case "exe_load_map_by_click" :			exe_load_map_by_click(_carry); _fexe = 1;	break;
			
			case "exe_add_static_object_to_map_by_click" :			exe_add_static_object_to_map_by_click(_carry); _fexe = 1;	break;
			case "exe_add_dynamic_object_to_map_by_click" :			exe_add_dynamic_object_to_map_by_click(_carry); _fexe = 1;	break;
			case "exe_add_helper_object_to_map_by_click" :			exe_add_helper_object_to_map_by_click(_carry); _fexe = 1;	break;
			//wolrd menu page5 biome
			case "exe_wm_granulation_add" :				exe_wm_granulation_add(_carry); _fexe = 1;	break;
			case "delete_vbuff_by_click" :				delete_vbuff_by_click(_carry); _fexe = 1;	break;
			case "exe_terrain_combine_vbuff" :			exe_terrain_combine_vbuff(_carry); _fexe = 1;	break;
			case "create_biome_and_vbuff" :				create_biome_and_vbuff(); _fexe = 1;	break;

			//unrefered now
			case "exe_temporary_save_vbuff" :			exe_temporary_save_vbuff(_carry); _fexe = 1;	break;
			
			//mapeditor
			case "exe_gizmo_change_size" : exe_gizmo_change_size(_carry); _fexe = 1;	break;
			case "exe_push_matrix_to_mapeditor_connector" : exe_push_matrix_to_mapeditor_connector(_carry); _fexe = 1;	break;
			case "exe_switch_spawn_by_pos" : exe_switch_spawn_by_pos(_carry); _fexe = 1;	break;
			
			//vbuff_simple_menu
			case "exe_kill_list_vbuff_simple_menu_updated" : exe_kill_list_vbuff_simple_menu_updated(_carry); _fexe = 1;	break;
			case "exe_save_list_vbuff_simple_menu_updated" : exe_save_list_vbuff_simple_menu_updated(_carry); _fexe = 1;	break;
			
		}
	mouse_struct.function_executed = _fexe;
}