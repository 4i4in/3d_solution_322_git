function exe_generate_biome_paint_list(_carry)
{
	//menus.world_control_menu._biome_paint_list
	var _bpl = [];

	for(var _nn = array_length(map3d.helpers_objects) -1;	_nn > -1; _nn--	)
		{
			var _obj = map3d.helpers_objects[_nn];
			var _valid_paint = 0;
			if struct_get(_obj.character_sheet, "body_measures") != undefined
				{
					if struct_get(_obj.character_sheet.body_measures,"biome_paint") != undefined
						{
							_valid_paint = _obj.character_sheet.body_measures.biome_paint;
						}
				}
			if _valid_paint > 0
				{
					var _px = _obj.part_vsubmit[0][0];
					var _py = _obj.part_vsubmit[0][1];
					var _pz = _obj.part_vsubmit[0][2];
					
					var _pnx = _obj.part_vsubmit[0][6];
					var _pny = _obj.part_vsubmit[0][7];
					var _pnz = _obj.part_vsubmit[0][8];
					
					var _pradius = _obj.character_sheet.body_measures.biome_radius;
					var _pchance = _obj.character_sheet.body_measures.biome_chance_up;
					var _pgranulation = _obj.character_sheet.body_measures.granulation;
					var _pbiome = _obj.character_sheet.body_measures.biome;
					
					var _pack = [	[_px,_py,_pz],[_pnx,_pny,_pnz],[_pradius,_pchance,_pgranulation,_pbiome]	];
					array_push(_bpl,_pack);
				}
		}
	menus.world_control_menu._biome_paint_list = _bpl;
	
	reset_current_menu_array = 1;
}