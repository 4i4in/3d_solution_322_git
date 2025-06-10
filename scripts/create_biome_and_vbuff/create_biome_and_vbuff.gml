function create_biome_and_vbuff()
{
	exe_generate_biome_paint_list();
	exe_generate_biome();
	exe_biome_array_combine_vbuff();
	menus.world_control_menu._biome_paint_list = [];
}