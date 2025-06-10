function exe_cleanse_all_vbuffs()
{
	exe_try_catch_delete_vbuff(vb_combined_terrain);
	exe_try_catch_delete_vbuff(vb_combined_biome);
	
	for(var _nn = array_length(all_vbuff_list)-1; _nn > -1; _nn--)
		{
			exe_try_catch_delete_vbuff(all_vbuff_list[_nn][1]);
			array_delete(all_vbuff_list,_nn,1);
		}
	for(var _nn = array_length(map3d.static_objects) -1;	_nn > -1; _nn--	)
		{
			var _obj = map3d.static_objects[_nn];
			exe_cleanse_obj_vbuffs(_obj);
		}
	for(var _nn = array_length(map3d.controlable_objects) -1;	_nn > -1; _nn--	)
		{
			var _obj = map3d.controlable_objects[_nn];
			exe_cleanse_obj_vbuffs(_obj);
		}
	for(var _nn = array_length(map3d.helpers_objects) -1;	_nn > -1; _nn--	)
		{
			var _obj = map3d.helpers_objects[_nn];
			exe_cleanse_obj_vbuffs(_obj);
		}
}