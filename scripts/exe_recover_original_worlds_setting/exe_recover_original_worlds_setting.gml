function exe_recover_original_worlds_setting()
{
	map3d.world_settings.world_sqr_size =	variable_clone(map3d.keep_world_settings.world_sqr_size);
	map3d.world_settings.world_x_start =	variable_clone(map3d.keep_world_settings.world_x_start);
	map3d.world_settings.world_y_start =	variable_clone(map3d.keep_world_settings.world_y_start);
	map3d.world_settings.world_z_start =	variable_clone(map3d.keep_world_settings.world_z_start);
	map3d.world_settings.chunknumber =		variable_clone(map3d.keep_world_settings.chunknumber);
}