function patch_obj_to_current_standard(_obj)
{
	if struct_get(_obj,"part_anchored_objects") == undefined
		{
show_debug_message("patch_obj_to_current_standard");
show_debug_message("part_anchored_objects; added in v316;");
			var _parts_number = array_length(_obj.part_naming);
			var _p_array = [];
			for(var _ii = 0; _ii < array_length(_obj.part_naming); _ii++)
				{
					array_push(_p_array,[]);
				}
			struct_set(_obj,"part_anchored_objects",_p_array);
		}
	return(_obj);
}