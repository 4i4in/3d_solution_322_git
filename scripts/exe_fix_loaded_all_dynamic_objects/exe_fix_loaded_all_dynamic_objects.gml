function exe_fix_loaded_all_dynamic_objects()
{
	for(var _nn = array_length(map3d.controlable_objects) -1;	_nn > -1; _nn--	)
		{
			var _obj = map3d.controlable_objects[_nn];
			
			_obj = patch_obj_to_current_standard(_obj);
			
			_obj = exe_return_part_texture(_obj, "visible");
			_obj = exe_return_part_texture(_obj, "helper");
	
			_obj = exe_return_part_vbuff_by_reference(_obj, "visible");
			_obj = exe_return_part_vbuff_by_reference(_obj, "helper");
			_obj = exe_return_part_vbuff_by_reference(_obj, "colider");
			
			_obj = exe_rotate_all_vbuffs(_obj,0,[0,0,1]);
			
			_obj = exe_fix_activator_time(_obj);//doors and stuff
			
			map3d.controlable_objects[_nn] = _obj;
		}
}