function exe_create_reference_struct()
{
reference_struct =
	{
		//humanoid sceleton
		humanoid_sceleton_scale_1_part_set :				exe_return_humanoid_sceleton_scale_1_part_set(),
		
		humanoid_sceleton_anim_pack_01 :					exe_return_humanoid_sceleton_anim_pack_01(),
		humanoid_sceleton_anim_cycle_01 :					exe_return_humanoid_sceleton_anim_cycle_01(),
		
		humanoid_sceleton_anim_pack_02 :					exe_return_humanoid_sceleton_anim_pack_02(),
		humanoid_sceleton_anim_cycle_02 :					exe_return_humanoid_sceleton_anim_cycle_02(),
		
		humanoid_sceleton_anim_pack_03 :					exe_return_humanoid_sceleton_anim_pack_03(),
		humanoid_sceleton_anim_cycle_03 :					exe_return_humanoid_sceleton_anim_cycle_03(),
		
		humanoid_sceleton_anim_pack_04 :					exe_return_humanoid_sceleton_anim_pack_04(),
		humanoid_sceleton_anim_cycle_04 :					exe_return_humanoid_sceleton_anim_cycle_04(),
		
		humanoid_sceleton_anim_pack_05 :					exe_return_humanoid_sceleton_anim_pack_05(),
		humanoid_sceleton_anim_cycle_05 :					exe_return_humanoid_sceleton_anim_cycle_05(),
		
		humanoid_sceleton_anim_pack_06 :					exe_return_humanoid_sceleton_anim_pack_06(),
		humanoid_sceleton_anim_cycle_06 :					exe_return_humanoid_sceleton_anim_cycle_06(),
		
		humanoid_sceleton_anim_pack_07 :					exe_return_humanoid_sceleton_anim_pack_07(),
		humanoid_sceleton_anim_cycle_07 :					exe_return_humanoid_sceleton_anim_cycle_07(),
		
		humanoid_sceleton_anim_pack_08 :					exe_return_humanoid_sceleton_anim_pack_08(),
		humanoid_sceleton_anim_cycle_08 :					exe_return_humanoid_sceleton_anim_cycle_08(),
		
		humanoid_sceleton_anim_pack_09 :					exe_return_humanoid_sceleton_anim_pack_09(),
		humanoid_sceleton_anim_cycle_09 :					exe_return_humanoid_sceleton_anim_cycle_09(),
		
		humanoid_sceleton_anim_pack_10 :					exe_return_humanoid_sceleton_anim_pack_10(),
		humanoid_sceleton_anim_cycle_10 :					exe_return_humanoid_sceleton_anim_cycle_10(),
		
		humanoid_sceleton_detector_lines_pack_01 :			exe_return_humanoid_sceleton_detector_lines_pack_01(),
		humanoid_sceleton_items_swaps:						exe_humanoid_sceleton_items_swaps_01(),
		
		//door1 open up
		door1_anim_pack_01 :					exe_return_door1_anim_pack_01(),
		door1_anim_cycle_01 :					exe_return_door1_anim_cycle_01(),
		
		door1_detector_lines_pack_01 :			exe_return_empty_detector_lines_pack_01,//exe_return_door1_detector_lines_pack_01(),
		door1_items_swaps_01:					exe_door1_items_swaps_01(),
		//===========================
		//gfield1 open up
		gfield1_anim_pack_01 :					exe_return_gfield1_anim_pack_01(),
		gfield1_anim_cycle_01 :					exe_return_gfield1_anim_cycle_01(),
		
		gfield1_detector_lines_pack_01 :		exe_return_empty_detector_lines_pack_01(),
		gfield1_items_swaps_01:					exe_gfield1_items_swaps_01(),
		//===========================
		
		
		//statics
		stone_items_swaps_01:					exe_stone_items_swaps_01(),
		pilar_items_swaps_01:					exe_pilar_items_swaps_01(),
		bush_items_swaps_01:					exe_bush_items_swaps_01(),
		grass_items_swaps_01:					exe_grass_items_swaps_01(),
		
		tree_items_swaps_01:					exe_tree_items_swaps_01(),
		
		//utylity
		ref500_items_swaps_01:					exe_ref500_items_swaps_01(),
		paint_d100_items_swaps_01:				exe_paint_d100_items_swaps_01(),
		//=======
		chamber_items_swaps_5x5sqr_01:			exe_chamber_items_swaps_5x5sqr_01(),
		corridor_items_swaps_L3_flat_01:		exe_corridor_items_swaps_L3_flat_01(),
		corridor_items_swaps_L3_up_01:			exe_corridor_items_swaps_L3_up_01(),
		corridor_items_swaps_L3_down_01:		exe_corridor_items_swaps_L3_down_01(),
		
		floor_items_swaps_5x5_01:				exe_floor_items_swaps_5x5_01(),
		floor_items_swaps_3x3_01:				exe_floor_items_swaps_3x3_01(),
		
		entrance_items_swaps_5x5_01:			exe_entrance_items_swaps_5x5_01(),
		
		wall_w4h3_items_swaps_01:				exe_wall_w4h3_items_swaps_01(),
		
		//=======
		biome_paints_lists:						exe_biome_paints_lists(),
		
	};
}