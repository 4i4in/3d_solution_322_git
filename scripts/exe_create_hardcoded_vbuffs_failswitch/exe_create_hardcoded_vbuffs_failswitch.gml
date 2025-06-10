function exe_create_hardcoded_vbuffs_failswitch()
{
	all_vbuff_list = [];
	
	//those two are not on the list, but deleted i exe_cleanse_all_vbuffs
	vb_combined_terrain = -1;//those vbuffs are generated in game by combining other vbuffs
	var _lpack = ["vb_combined_terrain",vb_combined_terrain,"generated"]; array_push(all_vbuff_list,_lpack);
	
	vb_combined_biome = -1;//placeholder for biome 
	var _lpack = ["vb_combined_biome",vb_combined_biome,"generated"]; array_push(all_vbuff_list,_lpack);
	
	//if is_array(all_vbuff_list)	{kill them all};

	//keep empty vbuff first
	vbuff_empty = exe_create_empty_vbuff();
	var _lpack = ["vbuff_empty",vbuff_empty,"generated"]; array_push(all_vbuff_list,_lpack);
	
	vbuff_dgw_dgh = exe_vbuff_dgw_dgh();
	var _lpack = ["vbuff_dgw_dgh",vbuff_dgw_dgh,"generated"]; array_push(all_vbuff_list,_lpack);
	
	
	exe_create_game_utylity_vbuffs();//load set
	exe_create_helpers_paint_vbuffs();//load set
	
	exe_create_basic_doors_and_activators();//load set
	exe_create_phy_fields_activators();//load set
	
	exe_create_vbuffs_bushes();//load set
	exe_create_vbuffs_grass();//load set
	exe_create_vbuffs_diagupgrass();//load set
	exe_create_vbuffs_wallgrass();//load set
	exe_create_vbuffs_wallroot();//load set
	exe_create_vbuffs_roofroot();//load set
	
	exe_create_vbuffs_stones();//load set
	exe_create_vbuffs_pilars();//load set
	exe_create_vbuffs_trees();//load set
	exe_create_vbuffs_open_walls();//load set
	exe_create_vbuffs_floors();//load set
	
	exe_create_vbuffs_entrances();//load set
	
	exe_create_vbuffs_decorations();//load set
	
	exe_create_vbuffs_chambers();//load set
	exe_create_vbuffs_corridors();//load set
	
	exe_create_basic_vbuffs_bodyparts_coliders();//load set
	exe_create_basic_vbuffs_bodyparts();//load set
	exe_create_theme_01_vbuffs_bodyparts();//load set
	exe_create_theme_02_vbuffs_bodyparts();//load set
	exe_create_theme_03_vbuffs_bodyparts();//load set
	exe_create_theme_04_vbuffs_bodyparts();//load set
	
	exe_create_standard_weapons();//load set
	exe_create_standard_helmets();//load set
	
	exe_create_basic_equipment();//load set
	
	exe_create_standard_shields();//load set
}