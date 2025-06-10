function exe_add_dynamic_object_to_map_by_click(_carry)
{
	var _func = _carry[0];
	var _pos = _carry[1];
	
	var _obj = -1;
	switch(_func)
		{
			case "exe_add_camera_01":				
				_obj = exe_add_camera_01(_pos);	
				_obj = exe_finish_obj_operations(_obj);
				map3d = exe_map3d_add_controlled_objects_v2(map3d,_obj);
				break;
			case "exe_add_door_in_01":				
				_obj = exe_add_door_in_01(_pos);	
				_obj = exe_finish_obj_operations(_obj,"doors1");
				map3d = exe_map3d_add_controlled_objects_v2(map3d,_obj);
				break;
			case "exe_add_gravity_field_01":		
				_obj = exe_add_gravity_field_01(_pos);	
				_obj = exe_finish_obj_operations(_obj,"gfield1");
				map3d = exe_map3d_add_controlled_objects_v2(map3d,_obj);
				break;
			case "exe_add_humanoid_sceleton_hero_01":	
				if array_length(_pos) == 16
					{
						var _extract_xyz = [0,0,0];
						_extract_xyz[0] = _pos[12];
						_extract_xyz[1] = _pos[13];
						_extract_xyz[2] = _pos[14];
						_pos = _extract_xyz;
					}
				_pos[2] += 100.;
				var _input = {	scale : 1, name : "hero_01",		directory : "controlled/",
					controler : "pad0",	load_phy : ["humanoid_sceleton"],	respawn_point : [_pos[0],_pos[1],_pos[2],0,13,-5000,5000,-5000,5000,-_pos[2],5000],//xyz,time stamp, maxtime, x-,x+,y-,y+,z-,z+
					texture : ["tex_body_01_nomaterial","tex_normal_z"],
					anim_pack : "humanoid_sceleton_anim_pack_01",	camera:	[0,"cam2","camera_back","rot_lerp"],
					detector_pack : "humanoid_sceleton_detector_lines_pack_01",	items_swaps : "humanoid_sceleton_items_swaps",
					};
				_input.skin_set = exe_return_humanoid_skin_set("armored_for_testing",_input.scale);
				var _obj = exe_spawn_humanoid(_input);
				_obj = exe_finish_obj_operations(_obj,"character",_input);
				map3d = exe_map3d_add_controlled_objects_v2(map3d,_obj);
				break;
		}
		
	reset_current_menu_array = 1;
}